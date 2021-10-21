function matrix = RowDistance(matrix1,matrix2)
	[nRows, nCols] = size(matrix1);

	matrix = EuclideanDistance(matrix1(1,:), matrix2(1,:));
	for row = 2:nRows
		matrix = [matrix; EuclideanDistance(matrix1(row,:), matrix2(row,:))];
	end
end