/// <summary>
/// Page Teacher List (ID 50101).
/// </summary>
page 50101 "Teacher List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teacher;
    CardPageId = TeacherCard;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
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
        }
        // area(Factboxes)
        // {

        // }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction();
    //             begin

    //             end;
    //         }
    //     }
    // }
}