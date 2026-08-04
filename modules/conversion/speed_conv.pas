unit SpeedConv;
interface
function KmhToMph(kmh: real): real;
function MphToKmh(mph: real): real;
implementation
function KmhToMph(kmh: real): real; begin KmhToMph := kmh * 0.621371; end;
function MphToKmh(mph: real): real; begin MphToKmh := mph / 0.621371; end;
end.
