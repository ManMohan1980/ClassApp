/// <summary>
/// Table Class Schedule (ID 50103).
/// </summary>
table 50103 "Class Schedule"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Teacher ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Teacher;
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(3; "Class ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Class;

            trigger OnValidate()
            var
                recClass: Record Class;
                recTeacher: Record Teacher;
            begin
                if xRec."Class ID" <> rec."Class ID" then begin
                    recClass.Reset();
                    if recClass.Get("Class ID") then begin
                        "Class Name" := recClass.Name;
                    end;
                    recTeacher.Reset();
                    if recTeacher.Get("Teacher ID") then begin
                        "Teacher Name" := recTeacher.Name;
                    end;

                end;

            end;
        }
        field(4; "ScheduleDay"; option)
        {
            Caption = 'Schedule Day';
            DataClassification = ToBeClassified;
            OptionMembers = Mondey,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday;
            OptionCaption = 'Mondey,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday';
        }
        field(5; "Schedule Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Schedule Start Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Duration; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Schedule End Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Teacher Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Class Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Teacher ID", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}