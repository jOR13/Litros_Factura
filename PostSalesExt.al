tableextension 50122 Post_Sales_Invoice_Ext_Qty extends "Sales Invoice Header"
{
    fields
    {
        field(50122; "Cantidad de litros"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Sales Invoice Line".Quantity where("Document No." = field("No."), "Sell-to Customer No." = field("Sell-to Customer No.")));
        }
    }

    var
        myInt: Integer;
}

tableextension 50123 Cust_Ext_Qty extends Customer
{
    fields
    {
        field(50123; "Cantidad de litros"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Sales Invoice Line".Quantity where("Sell-to Customer No." = field("No.")));

        }
    }

    var
        myInt: Integer;
}

