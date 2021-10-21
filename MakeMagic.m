% Takes the three numbers and makes a magic square from them
function square = MakeMagic(base, offset1, offset2)
    square = [base - offset1 - offset2, base + offset1, base + offset2; 
              base + 2.0*offset2 + offset1, base, base - 2.0*offset2 - offset1;
              base - offset2, base - offset1, base + offset1 + offset2];
end