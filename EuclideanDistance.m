function distance = EuclideanDistance(vec1, vec2)
	sub = vec1 - vec2;
	sub = sub .* sub;
	distance = simplify(sqrt(sum(sub)));
end

