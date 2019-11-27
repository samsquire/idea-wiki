xquery version "3.0";
let $idea := fn:doc("xmldb:exist:///db/sam/graphs/NAME")
return element dotml:graph {
		namespace dotml {"http://www.martin-loetzsch.de/DOTML"},
		namespace xsi {"http://www.w3.org/2001/XMLSchema-instance"},

		attribute file-name { "NAME" },
		attribute rankdir { "LR" },
		element dotml:node { attribute id  {"GID"}, attribute label {"NAME"}, attribute fontsize { 9 },
										attribute font { "Arial" } },
		(for $section in $idea//sam
				let $name := fn:replace($section/@name, '\.', '')
				return (element dotml:node {
								attribute id { $name },
								attribute label { $name }
								},
								element dotml:edge {
										attribute from { $name },
										attribute to { "GID" },
										attribute label { $section/@type },
										attribute fontsize { 9 },
										attribute font { "Arial" }
										
								})
				
		)
}
