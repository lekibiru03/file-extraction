@load ../__load__

module FileExtraction;

const vbs_types: set[string] = { 
								"application/x-vbs",
					   			"text/vbs",
					   			"text/vbscript"
								};

hook FileExtraction::extract(f: fa_file, meta: fa_metadata) &priority=5
	{
	if ( meta$mime_type in vbs_types )
		break;
	}

