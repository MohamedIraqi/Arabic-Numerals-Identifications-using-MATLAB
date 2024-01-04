%PostNetsLayer_majorityvote uses majority vote to determine the output from
%multiple layers named net1,net2...net5
function [output]=PNLMV(input,nets)
    a=zeros(1,size(nets,2));
    for i=1:1:size(nets,2)
        a(1,i)=nets{i}(input');
    end
    z=round(a);
    output=majorityvote(z);
end