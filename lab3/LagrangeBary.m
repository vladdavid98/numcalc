function Lx=LagrangeBary(nodes,values,x)
    %nodes: x1..xn
    %values: f(x1)..f(xn)
    %set of points: x
    A=CoeffBary(nodes); %vector of coefficients
    %we apply the Barycentric formula (7) from course2, page 9
    Lx = x;
    for j=1:length(x)
        x_pos_node = find(nodes==x(j));
        if x_pos_node
            Lx(j)=values(x_pos_node); %return the position of the node equal to x(j)
        else
            Lx(j) = sum(A.*values./(x(j)-nodes))/sum(A./(x(j)-nodes));
        end
    end
end

function A=CoeffBary(nodes)
    A=nodes;
    for i=1:length(nodes)
        A(i)=1/prod(nodes(i)-nodes(nodes~=nodes(i)));
    end
end