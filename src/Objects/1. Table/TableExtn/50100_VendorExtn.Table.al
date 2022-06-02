/// <summary>
/// TableExtension VendorExtn (ID 50100) extends Record MyTargetTable.
/// </summary>
tableextension 50100 VendorExtn extends Vendor
{
    fields
    {
        field(501; "Vendor Type"; Option)
        {
            Caption = 'Vendor Type';
            DataClassification = ToBeClassified;
            OptionMembers = " ",Distributor,Manufacturer,Trader,Jobworker;
            OptionCaption = ' ,Distributor,Manufacturer,Trader,Jobworker';
        }
    }

    var
        myInt: Integer;
}