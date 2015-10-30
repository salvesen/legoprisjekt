function [acc_vector] = GetAbsoluteIMU_Acc(port, varargin)
% Reads the current acceleration value from the AbsoluteIMU sensor.
%
% Syntax
%
% acc_vector = GetAbsoluteIMU_Acc(port);
%
% acc_vector = GetAbsoluteIMU_Acc(port, varargin)
%
%Description
% acc_vector = GetAbsoluteIMU_Acc(port) returns the current 3x1 acceleration vector of the three
% axes from the AbsoluteIMU sensor. The row vector contains the acceleration for X, Y and Z-axis, respectively.
% A reading of 500 is equal to the acceleration of 1g.
%
%
%The last optional argument can be a valid NXT handle. If none is
%specified, the default handle will be used (call COM_SetDefaultNXT to
%set one).
%
%Examples
% OpenAccelerator(SENSOR_1);
% acc_vector = GetAbsoluteIMU_Acc(SENSOR_1);
% CloseSensor(SENSOR_1);
%
% See also: GetAbsoluteIMU_Tilt , OpenAccelerator
%
% Sondre Norheim, 15.10.2012

acc_vector = [NaN; NaN; NaN];
%see if varargin is set, else send standard handle
if nargin > 1
    handle = varargin{1};
else
    handle = COM_GetDefaultNXT;
end
% Read 6 bytes from I2C, sensorport "port", device 0x22, adress 0x45
noofbytes =uint8(6);
device = uint8(hex2dec('22'));
address = uint8(hex2dec('45'));

data = COM_ReadI2C(port, noofbytes, device, address, handle);

% Put data in vector
if ~isempty(data)
    acc_vector = [typecast(data(1:2), 'int16'), typecast(data(3:4), 'int16'),  typecast(data(5:6), 'int16')];       
end

end
