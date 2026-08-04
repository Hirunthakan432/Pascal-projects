program DemoFileUtils;

uses
  FileUtils;

var
  sample: array[0..3] of string;
begin
  sample[0] := 'First line';
  sample[1] := 'Second line';
  sample[2] := 'Third line';
  sample[3] := 'Fourth line';

  WriteLines('demo_output.txt', sample, 4);
  writeln('File written. Contents:');
  PrintFile('demo_output.txt');
  writeln('Line count: ', CountLines('demo_output.txt'));
end.
