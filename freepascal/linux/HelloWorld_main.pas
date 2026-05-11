program helloworld_main;

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
                                    WriteLn('Output error: ', E.Message);
                                    Halt(1);
                        end;
            end;
end;

begin
            SafeWriteHello;
end.
