/// <summary>
/// Page TeacherCard (ID 50103).
/// </summary>
page 50103 TeacherCard
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'Teacher';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Work Phone No."; Rec."Work Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Personal Phone No."; Rec."Personal Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Website URL"; Rec."Website URL")
                {
                    ApplicationArea = All;
                }
                field("e-Mail"; Rec."e-Mail")
                {
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }

            }
            part(ClassSchedules; "Teacher Class Schedule SubForm")
            {
                SubPageLink = "Teacher ID" = field(ID);
                ApplicationArea = All;
            }
        }
    }

}