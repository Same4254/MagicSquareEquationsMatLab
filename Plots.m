baseNumber = 5;
offset1 = 2;
offset2 = 1;

r = sqrt(3.0 * baseNumber);

square = MakeMagic(baseNumber, offset1, offset2);

square = sqrt(square);

vectors = ToVectors(square);

hold on
grid on

[X, Y, Z] = sphere
X = X * r;
Y = Y * r;
Z = Z * r;

surf(X,Y,Z)

X2 = vectors(:,1);
Y2 = vectors(:,2);
Z2 = vectors(:,3);

graph = scatter3(X2,Y2,Z2);

axis vis3d
set(gca, 'Projection','perspective')
pbaspect([1,1,1])

xlim([-5,5])
ylim([-5,5])
zlim([-5,5])