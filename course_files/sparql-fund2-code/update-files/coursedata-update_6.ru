#coursedata-update_6.ru
	DELETE
	{
		?b1 <http://id.loc.gov/ontologies/RecordInfo#recordContentSource> ?b1o .
		?b2 <http://id.loc.gov/ontologies/RecordInfo#recordStatus> ?b2o .
		?b3 <http://id.loc.gov/ontologies/RecordInfo#recordChangeDate> ?b3o .
		?b4 <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> ?b4o .
		<http://id.loc.gov/vocabulary/preservation/softwareType/ren> ?p ?o .
	}
	WHERE
	{
		?b1 <http://id.loc.gov/ontologies/RecordInfo#recordContentSource> ?b1o .
		?b2 <http://id.loc.gov/ontologies/RecordInfo#recordStatus> ?b2o .
		?b3 <http://id.loc.gov/ontologies/RecordInfo#recordChangeDate> ?b3o .
		?b4 <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> ?b4o .
		<http://id.loc.gov/vocabulary/preservation/softwareType/ren> ?p ?o .
	}