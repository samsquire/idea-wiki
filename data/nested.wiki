<document>

<sam type="sparql" name="idealist.sparql"><![CDATA[
PREFIX : <http://samsquire.com/> 
PREFIX owl: <http://www.w3.org/2002/07/owl#> 
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
PREFIX xml: <http://www.w3.org/XML/1998/namespace> 
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
PREFIX samsquire: <http://samsquire.com/> 
BASE <http://samsquire.com/> 

INSERT DATA { GRAPH <:IdeaList> {
:hasIdea a owl:ObjectProperty.
:Idea a owl:Class .
:IdeaStatus a owl:Class.
:IdeaProgress a owl:ObjectProperty.

:NoKnownImplementations a owl:Class;
        rdfs:subClassOf :IdeaStatus.
        
:AttemptedImplementation a owl:Class;
        rdfs:subClassOf :IdeaStatus.

:EncryptionServer a owl:Class; a :Idea.
:OpenEmailMetadata a owl:Class; a :Idea.
:Dashboard a owl:Class; rdfs:subClassOf :Idea.
:LifeEngineDashboard a :Dashboard.
:MagazineDashboard a :Dashboard.
}
}
]]>
</sam>

<sam type="n3" name="myideas.rdfa">
<sam type="data" name="ideasearch.sparql"><![CDATA[
PREFIX : <http://samsquire.com/>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
CONSTRUCT   { <http://samsquire.com/> :hasIdea ?ideas }
WHERE { ?ideas a :Idea  }
]]>
</sam>
</sam>


</document>
