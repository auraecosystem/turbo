#include <iostream>
#include <string>
#include "pugixml.hpp"
#include <libxml/parser.h>
#include <libxml/xpath.h>

// Fast Header Access (pugixml)
void process_header(const std::string& xml_data) {
    pugi::xml_document doc;
    if (doc.load_string(xml_data.c_str())) {
        pugi::xml_node hdr = doc.child("filing").child("header");
        std::cout << "CIK: " << hdr.child_value("CENTRAL_INDEX_KEY") << std::endl;
    }
}

// Complex XBRL Mapping (libxml2)
void process_xbrl(const std::string& xbrl_data) {
    xmlDocPtr doc = xmlReadMemory(xbrl_data.c_str(), xbrl_data.size(), "noname.xml", NULL, 0);
    xmlXPathContextPtr xpathCtx = xmlXPathNewContext(doc);
    
    // Register SEC Taxonomy Namespaces
    xmlXPathRegisterNs(xpathCtx, (const xmlChar*)"us-gaap", 
                       (const xmlChar*)"http://fasb.org/us-gaap/2023");
    
    // Extract a specific financial fact
    xmlXPathObjectPtr result = xmlXPathEvalExpression(
        (const xmlChar*)"//us-gaap:NetIncomeLoss", xpathCtx);
    
    if (result && result->nodesetval) {
        std::cout << "Extracted " << result->nodesetval->nodeNr << " facts." << std::endl;
    }

    xmlXPathFreeObject(result);
    xmlXPathFreeContext(xpathCtx);
    xmlFreeDoc(doc);
}
