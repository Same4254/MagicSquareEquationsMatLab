function vectors = ToVectors(square)
	dimensions = size(square);
	
	vectors = transpose(diag(square));
	vectors = [vectors; transpose(diag(fliplr(square)))];
	
	for i = 1:dimensions(1)
		vectors = [vectors; square(i,:)];
		vectors = [vectors; transpose(square(:,i))];
	end
end
