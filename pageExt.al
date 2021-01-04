pageextension 50122 PageExt_Sales_Invoice_Header extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Location Code")
        {
            field("Cantidad de litros"; rec."Cantidad de litros")
            {
                ApplicationArea = all;
            }


        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}

pageextension 50123 PageExt_Cust extends "Customer List"
{
    layout
    {
        addafter("VAT Bus. Posting Group")
        {
            field("Cantidad de litros"; rec."Cantidad de litros")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}