function table = div_dif(nodes,values)
    %nodes: x1..xn
    %values: f(x1)..f(xn)
    %table: table of divided differences
    
    n = length(nodes);
    table = NaN(n);
    
    nodeT = transpose(nodes);
    
    table(:,1) = transpose(values);
%     for j=2:n
%         table(1:n-j+1,j) = diff(table(1:n-j+2,j-1))./...
%             (nodeT(j:n)-nodeT(1:n-j+1));
%     end
    for j=2:n
        for i=1:n-j+1
            table(i,j) =(table(i+1,j-1) - table(i,j-1))/...
                        (nodes(i+j-1)-nodes(i));
            
        end
    end

end