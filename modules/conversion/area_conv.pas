unit AreaConv;
interface
function SqMetersToSqFeet(m2: real): real;
function SqFeetToSqMeters(ft2: real): real;
implementation
function SqMetersToSqFeet(m2: real): real; begin SqMetersToSqFeet := m2 * 10.7639; end;
function SqFeetToSqMeters(ft2: real): real; begin SqFeetToSqMeters := ft2 / 10.7639; end;
end.
