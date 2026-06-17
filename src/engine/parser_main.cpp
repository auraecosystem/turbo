#include "pugixml.hpp"
#include <iostream>
#include <libxml/parser.h> // For complex XBRL validation if needed

void parse_filing(const char* xml_string) {
    pugi::xml_document doc;
    pugi::xml_parse_result result = doc.load_string(xml_string);

    if (result) {
        // High-speed Xpath-like navigation
        pugi::xml_node header = doc.child("sec_filing").child("header");
        std::cout << "Company: " << header.child_value("COMPANY-CONFORMED-NAME") << std::endl;
        std::cout << "CIK: " << header.child_value("CIK") << std::endl;
    }
}
