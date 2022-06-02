/// <summary>
/// Page Class List (ID 50100).
/// </summary>
page 50100 "Class List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    PromotedActionCategories = 'New,Process,Report,Approval,Request Approval,New Document,Navigate,Incoming Documents,Vendor';
    SourceTable = Class;

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
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
                field(Mode; Rec.Mode)
                {
                    ApplicationArea = All;
                }
                field(Fee; Rec.Fee)
                {
                    ApplicationArea = All;
                }
            }
        }


        area(FactBoxes)
        {
            part(MyPart; "Acc. Sched. KPI Web Srv. Lines")
            {
                ApplicationArea = All;
                SubPageView = SORTING("Acc. Schedule Name");
            }
            systempart(Links; Links)
            {
                ApplicationArea = All;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = All;
            }
        }

    }
    actions
    {
        // Adds the action called "My Actions" to the Action menu 
        area(Processing)
        {
            action("My Actions")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                RunObject = page "Customer Card";
                trigger OnAction()
                begin
                    Message('Hello World');
                end;
            }
        }


        area(Creation)
        {
            // Adds the action "My New document" to the New Document group in the Actions menu. 
            action("My New document")
            {
                Promoted = true;
                PromotedCategory = Category4;
                ApplicationArea = All;
                RunObject = page "Customer Card";
                Image = "1099Form";
            }
        }

        area(Navigation)
        {
            // Adds the action called "My Navigate" to the Navigate menu. 
            action("My Navigate")
            {
                Promoted = true;
                PromotedCategory = Category4;
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }
        }

        area(Reporting)
        {
            // Adds a submenu called "My Label" to the Report menu. 
            // group(NewSubGroup)
            // {
            //     Caption = 'My label';
            //     group(MyGroup)
            //     {
            //         // Adds the action "My Report" to the My Label submenu. 
            action("My Report")
            {
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }
            //     }
            // }
        }
    }
}