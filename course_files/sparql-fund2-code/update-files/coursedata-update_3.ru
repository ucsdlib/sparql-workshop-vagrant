#coursedata-update_3.ru
	PREFIX c: <http://lja.org/courses/>
	PREFIX d: <http://lja.org/data/>
	PREFIX s: <http://lja.org/series/>
	INSERT
	{	
		s:data d:courseInstructor "Robert Chavez" .
		s:data d:d:courseTitle "Semantic Data Series" .
		s:data d:courseType "semantic-data" .
		s:data d:coursecombo ?courseid
	}
	WHERE
	{		
		?courseid d:courseType "data" .
	}
