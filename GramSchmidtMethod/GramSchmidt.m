clear all;clc;
fprintf("\t\t***********************************************************************\n");
fprintf("\t\t\t\tFind the Orthonormalizing Vector with Gram-Schmidt Method\n");

fprintf("\t\t***********************************************************************\n\n");
numberV = input("Enter the number of your vector:");
numberL = input("Enter the lenght of your vector:");
fprintf("\n");
for i=1:numberV
    fprintf("Enter your %d. vector:\n",i);
    for j=1:numberL
        U(i,j) = input(" ");
    end
end
V(1,:) = U(1,:);
for i=2:numberV
    for j=1:numberL
        V(i,:) = U(i,:) - projSum(i,U,V);
    end
end
fprintf("\t\t***********************************************************************\n");
fprintf("\t\t***********************************************************************\n");
fprintf("\t\t\t\t\t\t\t\tOrthogonal Matrix:\n\n\n");
disp(V');
fprintf("\n\n");
fprintf("\t\t***********************************************************************\n");
fprintf("\t\t***********************************************************************\n");
fprintf("\t\t\t\t\t\t\t\tOrthonormol Matrix:\n\n\n");
for i=1:numberV
    O(i,:) = unitV(V(i,:));
end
disp(O');
    
