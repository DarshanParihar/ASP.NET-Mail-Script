<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    ID:
                </td>
                <td>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Salary:
                </td>
                <td>
                    <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile:
                </td>
                <td>
                    <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="submit" 
                        onclick="btnsubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
