report 50100 "Class Report"
{
    ApplicationArea = All;
    Caption = 'Class Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Class; Class)
        {
            column(ID; ID)
            {
            }
            column(Name; Name)
            {
            }
            column(Mode; Mode)
            {
            }
            column(Fee; Fee)
            {
            }
            column(Active; Active)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
