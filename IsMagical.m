function magical = IsMagical(square)
    vectors = ToVectors(square);
	
	s = sum(vectors(1,:));

	magical = true;
	for i = 2 : length(vectors)
		if(sum(vectors(i,:)) ~= s)
			magical = false;
			break;
		end
	end
end

