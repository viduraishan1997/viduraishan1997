codeunit 50100 TestFunction
{
    trigger OnRun()
    begin
        MyTestChar.AddRange(',');
        MyText := 'abc.ffgg.hh';
        MyChar := '.';
        GetNumber(MyText, MyChar);
    end;

    var
        MyTestChar: List of [Text];
        MyText, MyChar : Text;
    local procedure GetNumber(TestText: Text; TestChar: Text[1])
    var
        istrue: Boolean;
        CharValue, value : Text;
        Posision: Integer;
    begin
        repeat
            Posision := StrPos(TestText, TestChar);
            if Posision = 0 then begin
                istrue := true;
                Message(TestText);
            end
            else begin
                Message(CopyStr(TestText, 1, Posision - 1));
                TestText := CopyStr(TestText, Posision + 1);
            end;
        until istrue
    end;
}