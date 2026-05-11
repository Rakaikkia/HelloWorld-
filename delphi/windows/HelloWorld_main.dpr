program HelloWorld_Main;

{$APPTYPE CONSOLE}
{$I+}

uses
            SysUtils;

procedure SafeWriteHello;
begin
            try
                        WriteLn('Hello World!');
                        if IOResult <> 0 then
                                    raise Exception.Create('WriteLn failed');
            except
                        on E: Exception do
                        begin
                                    WriteLn('Error in output: ', E.Message);
                                    Halt(1);
                        end;
            end;
end;

begin
            SafeWriteHello;
end.
