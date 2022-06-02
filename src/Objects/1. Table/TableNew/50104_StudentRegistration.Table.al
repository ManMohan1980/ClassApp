/// <summary>
/// Table Student Registration (ID 50104).
/// </summary>
table 50104 "Student Registration"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Student;

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
            begin
                if xRec."Class ID" <> rec."Class ID" then begin
                    recClass.Reset();
                    if recClass.Get("Class ID") then begin
                        "Class Name" := recClass.Name;
                        "Class Mode" := recClass.Mode;
                    end;

                end;

            end;
        }
        field(4; "Class Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            TableRelation = Class.Name;
            Editable = false;
        }
        field(5; "Class Mode"; Option)
        {
            TableRelation = Class.Mode;
            DataClassification = ToBeClassified;
            OptionMembers = "",Live,"On-Demand";
            OptionCaption = ' ,Live,On-Demand';
        }

    }

    keys
    {
        key(Key1; "Student ID", "Line No.")
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