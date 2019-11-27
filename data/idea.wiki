<document name="idea.md">
<sam name="header.md"/>
<![CDATA[<sam name="deleteidea.sparql" type="sparql">
<sam name="idea.prefix"/>]]>
DELETE WHERE {
	:<Idea/> ?a ?b.
}
<![CDATA[</sam>]]>
<![CDATA[
<sam type="sparql" name="]]><Idea/><![CDATA[.sparql">]]>
<sam name="idea.prefix"/>	
INSERT DATA {
:<Idea/> a owl:Class; a :Idea;
	 dc:title "<Title/>";
	 dc:description "<Description/>";
	 dc:identifier "<Idea/>".
}
<![CDATA[</sam>]]>
</document>
