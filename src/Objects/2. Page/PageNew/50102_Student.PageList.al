page 50102 "Student List"
{
    ApplicationArea = All;
    Caption = 'Student List';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.';
                    ApplicationArea = All;
                }
                field(Website; Rec.Website)
                {
                    ToolTip = 'Specifies the value of the Website field.';
                    ApplicationArea = All;
                }
                field("e-Mail"; Rec."e-Mail")
                {
                    ToolTip = 'Specifies the value of the e-Mail field.';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                    ApplicationArea = All;
                }
                field(Latitude; Rec.Latitude)
                {
                    ToolTip = 'Specifies the value of the Latitude field.';
                    ApplicationArea = All;
                }
                field(Longitude; Rec.Longitude)
                {
                    ToolTip = 'Specifies the value of the Longitude field.';
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
