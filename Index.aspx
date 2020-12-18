<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebFormsCRUDOperation.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Operation</title>
    <style>
        .btn{
           
            color: white;
            background-color: deepskyblue;
            width: 80%;
            margin-left:10px;
            height: 2rem;
            border-radius: 20%;
        }
        #GridView1{
            text-align: left;
            padding: 2rem;
        }
        .tableStyle{
            text-align: center;
            width: 100%;
            padding: 2rem;
            background-color: skyblue;
        }
        .tableStyle td{
            padding: 10px;
        }
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound"  
            DataKeyNames="Book Id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" 
            PageSize = "5" AllowPaging ="True" OnPageIndexChanging = "OnPaging" 
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
            Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField  HeaderText="Book Name" >
                    <ItemTemplate>
                        <asp:Label ID="lblBookName" runat="server" Text='<%# Eval("[Book Name]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtBookName" runat="server" Text='<%# Eval("[Book Name]") %>' ></asp:TextBox>
                    </EditItemTemplate>


                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book Id" >
                    <ItemTemplate>
                        <asp:Label ID="lblBookId" runat="server" Text='<%# Eval("[Book Id]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtBookId" runat="server" Text='<%# Eval("[Book Id]") %>' ></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author Name" >
                    <ItemTemplate>
                        <asp:Label ID="lblAuthorName" runat="server" Text='<%# Eval("[Author Name]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAuthorName" runat="server" Text='<%# Eval("[Author Name]") %>' ></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publisher Name" >
                    <ItemTemplate>
                        <asp:Label ID="lblPublisherName" runat="server" Text='<%# Eval("[Publisher name]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPublisherName" runat="server" Text='<%# Eval("[Publisher name]") %>' ></asp:TextBox>
                    </EditItemTemplate>


                </asp:TemplateField>
                  <asp:TemplateField HeaderText="No. of Copies" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblNoOfCopies" runat="server" Text='<%# Eval("[No of copies]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNoOfCopies" runat="server" Text='<%# Eval("[No of copies]") %>' ></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Price" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("[Price]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPrice" runat="server" Text='<%# Eval("[Price]") %>' ></asp:TextBox>
                    </EditItemTemplate>


                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" HeaderText="Operations">

                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />

        <table border="1" class="tableStyle" style="border-collapse: collapse" >
           
            <tr>
                 <th style="text-align:center">Add New Book</th>
                <td style="width: 150px">Book Name<br />
                    <asp:TextBox ID="txtBookName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Book Id<br />
                    <asp:TextBox ID="txtBookId" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                  Author Name<br />
                    <asp:TextBox ID="txtAuthorName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                    Publisher Name<br />
                    <asp:TextBox ID="txtPublisherName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                   No of Copies<br />
                    <asp:TextBox ID="txtNoOfCopies" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                   Price<br />
                    <asp:TextBox ID="txtPrice" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                    <asp:Button class="btn" ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
