program DemoAppend;
uses AppendFile, FileUtils;
begin
  AppendLine('log.txt', 'First entry');
  AppendLine('log.txt', 'Second entry');
  AppendLine('log.txt', 'Third entry');
  writeln('log.txt contents:');
  PrintFile('log.txt');
end.
