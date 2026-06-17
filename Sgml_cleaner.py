import re
from jinja2 import Template

XML_TEMPLATE = """<?xml version="1.0" encoding="UTF-8"?>
<filing>
    <header>
        {% for key, value in metadata.items() -%}
        <{{ key }}>{{ value }}</{{ key }}>
        {% endfor %}
    </header>
</filing>
"""

def parse_sgml_to_xml(raw_content):
    # Matches <TAG>Value until next newline or tag
    pattern = re.compile(r'<(?P<tag>[A-Z0-9\-]+)>(?P<value>[^<\n]*)')
    matches = pattern.finditer(raw_content)
    
    metadata = {m.group('tag').replace('-', '_'): m.group('value').strip() 
                for m in matches if m.group('value').strip()}
            
    return Template(XML_TEMPLATE).render(metadata=metadata)

# Example usage:
# raw_header = open("doc.hdr.sgm").read()
# clean_xml = parse_sgml_to_xml(raw_header)
