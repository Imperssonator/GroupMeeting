function out = what(file)
	fh = fopen(file, 'r');
	line = fgetl(fh);
	out = false;
	while (ischar(line))
		[str, r] = strtok(line, ' ');
		while (~isempty(str))
			if (strcmpi(str, 'Stephen'))
				out = true;
			end
			[str, r] = strtok(r, ' ');
		end
		line = fgetl(fh);
	end
	
	fclose(fh);
end