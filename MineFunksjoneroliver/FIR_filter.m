function DataFiltered = FIR_filter(Data,m)
    if length(Data) > m
        DataFiltered = sum(Data((length(Data)-m+1):length(Data)))*(1/m);
%         ind = size(Data,2)- m;
%         DataFiltered = 0;
%         for i = 1:m
%             ind = ind + 1;
%             %Data(ind);
%             DataFiltered = DataFiltered + Data(ind)*(1/m);
%         end
    else
        DataFiltered = sum(Data(1:length(Data)))*(1/length(Data));
%         %DataFiltered = Data(end);
%         ind = 0;
%         DataFiltered = 0;
%         for i = 1:length(Data)
%             ind = ind + 1;
%             DataFiltered = DataFiltered +Data(ind)*(1/length(Data));
%         end
    end
end