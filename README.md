marc2frbr FRBRizer tool
=========
The marc2frbr FRBRizer is an open-source tool. The tool supports the conversion of records in the MARC format to a normalized set of records based on the FRBR model. The tool is implemented in XSLT and requires Java 1.6+.

FRBRizer utilizes a set of rules encoded in an XML file. An example of such rules file is given in `examples/marc21/marc21.rules.xml`. 

The `example` folder includes a demonstration of the tool. Simply run:
 `sh examples/marc21/run_conversion.sh`. 

 This example is based on `MARC21` but the tool is generic enough and can easily be adapted to other dialects of MARC.


Publications
----
1. Trond Aalberg: A Process and Tool for the Conversion of MARC Records to a Normalized FRBR Implementation. ICADL 2006: 283-292.
2. Trond Aalberg, Maja Zumer: Looking for Entities in Bibliographic Records. ICADL 2008: 327-330
3. Naimdjon Takhirov, Trond Aalberg, Fabien Duchateau, Maja Zumer: FRBR-ML: A FRBR-based framework for semantic interoperability. Semantic Web 3(1): 23-43 (2012)


Contact
----
<a href="http://www.idi.ntnu.no/people/trondaal">Trond Aalberg</a> 

<a href="http://folk.ntnu.no/takhirov">Naimdjon Takhirov</a>




License
----
The marc2frbr FRBRizer tool may be used free of charge under the conditions of the following license:

Creative Commons CC-BY 3.0.



###You are free to:

**Share** -- copy and redistribute the material in any medium or format

**Adapt** -- remix, transform, and build upon the material for any purpose, even commercially.

The licensor cannot revoke these freedoms as long as you follow the license terms.

---
*Under the following terms*:

Attribution -- You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

No additional restrictions -- You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

---

Notices:

You do not have to comply with the license for elements of the material in the public domain or where your use is permitted by an applicable exception or limitation.

No warranties are given. The license may not give you all of the permissions necessary for your intended use. For example, other rights such as publicity, privacy, or moral rights may limit how you use the material.

A copy of license is available at http://creativecommons.org/licenses/by/3.0/