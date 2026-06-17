import re
from jinja2 import Template

def clean_sgm(raw_content):
    # Regex to find SEC tags like <CIK>12345
    pattern = re.compile(r'<(?P<tag>[A-Z0-9\-]+)>(?P<value>[^<]*)')
    matches = pattern.finditer(raw_content)
    
    data = {m.group('tag'): m.group('value').strip() for m in matches}
    
    # Jinja2 template to wrap it into valid XML
    xml_template = """
    <sec_filing>
        <header>
            {% for tag, val in metadata.items() %}
            <{{ tag }}>{{ val }}</{{ tag }}>
            {% endfor %}
        </header>
    </sec_filing>
    """
    return Template(xml_template).render(metadata=data)
