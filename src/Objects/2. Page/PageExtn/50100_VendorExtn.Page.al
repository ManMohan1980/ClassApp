/// <summary>
/// PageExtension VendorExtnPage (ID 50100) extends Record Vendor Card.
/// </summary>
pageextension 50100 VendorExtnPage extends "Vendor Card"
{
    layout
    {
        addafter(Name)
        {
            field("Vendor Type"; Rec."Vendor Type")
            {
                ApplicationArea = all;
            }

            // Add changes to page layout here
        }
    }
    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}