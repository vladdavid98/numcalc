function [Hx, der_Hx] = PiecewiseCubicHermiteInterp(nodes, values, der_values, x)
    % find nodes(i) and nodes(i+1) such that x in [nodes(i),nodes(i+1)]
    Hx = x;
    der_Hx = x;
    for j = 1:length(x)
        i = find(nodes>x(j),1)-1;
        if ~isempty(i)
            [Hx(j),der_Hx(j)] = Hermite_Interp_Der_Arr(...
                [nodes(i) nodes(i+1)],...
                [values(i) values(i+1)],...
                [der_values(i) der_values(i+1)]...
            ,x(j));
        else
            Hx(j) = values(end); der_Hx(j) = der_values(end);
        end
    end


end