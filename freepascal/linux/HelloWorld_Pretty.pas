program HelloWorld_Pretty;

uses
            SysUtils;
procedure SayHello;
begin
            WriteLn('Hello World!');
end;

begin
            try
                        SayHello;
            except
                        on E: Exception do
                        begin
                                    WriteLn('Error: ', E.Message);
                                    Halt(1);
                        end;
            end;
end.
