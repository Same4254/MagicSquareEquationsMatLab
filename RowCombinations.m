function combinations = RowCombinations(vectors, num)
	combinations = sym([]);

	indecies = 1:1:length(vectors);
	
	C = nchoosek(indecies, num);
	[nRows, nCols] = size(C);
	
	for col = 1:nCols
		toAppend = [];
		for row = 1:nRows
			toAppend = [toAppend; vectors(C(row, col), :)];
		end
		
		combinations(:,:,col) = toAppend;
	end
end