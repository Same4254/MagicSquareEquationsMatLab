function matrix = RowMultiplication(matrix1,matrix2)
	[nRows, nCols] = size(matrix1);
	
	matrix = simplify(matrix1(1,:) * transpose(matrix2(1,:)));
	for row = 2:nRows
		matrix = [matrix; simplify(matrix1(row,:) * transpose(matrix2(row,:)))];
	end
end

