<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration form.aspx.cs" Inherits="AppHw271119.Registration_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>first Name :</td>
                <td><asp:TextBox ID="fname" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Last Name :</td>
                <td><asp:TextBox ID="lname" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Gender :</td>
                <td><asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
                     <asp:ListItem text="Male" Value="1"></asp:ListItem>
                     <asp:ListItem text="Female" Value="2"></asp:ListItem>
                     <asp:ListItem text="Other" Value="3"></asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>

            <tr>
                <td>Qualification :</td>
                <td><asp:DropDownList ID="ddlquali" runat="server">
                    <asp:ListItem Text="BA" Value="1"></asp:ListItem>
                    <asp:ListItem Text="BSc" Value="2"></asp:ListItem>
                    <asp:ListItem Text="BCom" Value="3"></asp:ListItem>
                    <asp:ListItem Text="BTech" Value="4"></asp:ListItem>
                    <asp:ListItem Text="MBA" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Polytechnic" Value="6"></asp:ListItem>
                    <asp:ListItem Text="MBBS" Value="7"></asp:ListItem>
                    <asp:ListItem Text="LLB" Value="8"></asp:ListItem>
                    <asp:ListItem Text="ITI" Value="9"></asp:ListItem>
                    <asp:ListItem Text="BPharma" Value="10"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>

            <tr>
                <td></td>
                <td><asp:Button ID="btnsave" Text="Save" runat="server" OnClick="btnsave_Click"></asp:Button></td>
            </tr>

            <tr>
                <td></td>
                <td><asp:GridView ID="grd" runat="server" OnRowCommand="grd_RowCommand" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <%#Eval("fname") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <%#Eval("lname") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <%#Eval("gender") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Qualification">
                            <ItemTemplate>
                                <%#Eval("Qual") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Action">
                              <ItemTemplate>
                                  <asp:linkButton ID="btndelete" runat="server"  Text="Delete" CommandName="vishal" OnClientClick="return confirm('Are you sure!!!')" CommandArgument='<%#Eval("Id")%>'></asp:linkButton> | 
                                  <asp:linkButton ID="btnedit" runat="server"  Text="Edit" CommandName="anand" CommandArgument='<%#Eval("Id")%>'></asp:linkButton>
                              </ItemTemplate>
                          </asp:TemplateField>


                    </Columns>
                    </asp:GridView></td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
