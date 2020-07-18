@load ../__load__

module FileExtraction;

const python_types: set[string] = { 
								"text/x-python",
					   			"text/x-script.python",
					   			"application/x-bytecode.python",
                                "application/x-python-code" 
								};

hook FileExtraction::extract(f: fa_file, meta: fa_metadata) &priority=5
	{
	if ( meta$mime_type in python_types )
		break;
	}
