/// <summary>
/// Table Classes (ID 50100).
/// </summary>
table 50100 Class
{

    DataClassification = ToBeClassified;
    Caption = 'Class';
    // DataCaptionFields = "ID";
    LookupPageId = "Class List";
    Description = 'A class table that contains information of all classes';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Mode; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "",Live,"On-Demand";
            OptionCaption = ' ,Live,On-Demand';
        }
        field(5; Fee; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
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

    var
        i: Integer;

}