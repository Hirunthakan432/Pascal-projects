unit Conversion;
{ Unit conversion helpers }

interface

function CtoF(c: real): real;
function FtoC(f: real): real;
function MetersToFeet(m: real): real;
function FeetToMeters(ft: real): real;
function KgToPounds(kg: real): real;
function PoundsToKg(lb: real): real;
function KmToMiles(km: real): real;
function MilesToKm(mi: real): real;

implementation

function CtoF(c: real): real;
begin
  CtoF := c * 9 / 5 + 32;
end;

function FtoC(f: real): real;
begin
  FtoC := (f - 32) * 5 / 9;
end;

function MetersToFeet(m: real): real;
begin
  MetersToFeet := m * 3.28084;
end;

function FeetToMeters(ft: real): real;
begin
  FeetToMeters := ft / 3.28084;
end;

function KgToPounds(kg: real): real;
begin
  KgToPounds := kg * 2.20462;
end;

function PoundsToKg(lb: real): real;
begin
  PoundsToKg := lb / 2.20462;
end;

function KmToMiles(km: real): real;
begin
  KmToMiles := km * 0.621371;
end;

function MilesToKm(mi: real): real;
begin
  MilesToKm := mi / 0.621371;
end;

end.
