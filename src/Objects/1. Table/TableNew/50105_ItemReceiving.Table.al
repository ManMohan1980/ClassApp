/// <summary>
/// Table Item Receiving (ID 50105).
/// </summary>
table 50105 "Item Receiving"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Item No."; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";
            trigger OnValidate()
            var
                recItem: Record Item;
            begin
                if xrec."No." <> rec."No." then begin
                    recitem.reset;
                    if recitem.get("No.") then begin
                        "Item Description" := recItem.Description;
                    end;
                end;
            end;
        }
        field(3; "Item Description"; Code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item.Description;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
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