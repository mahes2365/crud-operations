﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Operations</title>
    <link rel="stylesheet" href="style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            width: 236px;
        }
        .auto-style4 {
            width: 290px;
        }
        .auto-style5 {
            height: 25px;
        }
        .auto-style6 {
            width: 236px;
            height: 50px;
        }
        .auto-style7 {
            width: 290px;
            height: 50px;
        }
        </style>
</head>
<body>
   <form id="form1" runat="server">
       <%--    Home section --%>
    <section id="home" class="home">
        <aside class="nav">
            <nav><a href="#home">Home</a></nav>
            <nav><a href="#insert">Insertion</a></nav>
            <nav><a href="#select">Selection</a></nav>
            <nav><a href="#update">Updation</a></nav>
            <nav><a href="#delete">Deletion</a></nav>
        </aside>
        <article class="home-content">
            <section class="img-container">
                <img src="images/welcome.svg" alt="welcomeimg"  />
            </section>
            <section class="content-container">
                <article>
                    <h2>Welcome</h2>
                    <p>Here you can perform</p>
                </article>
                <section class="thumb-img">
                   <div class="insert-img"><img src="images/insert.svg" alt="insertimg"/><p class="text1">Insert</p></div>
                   <div class="select-img"><img src="images/select.svg" alt="selectimg"/><p class="text2">Select</p></div>
                   <div class="update-img"><img src="images/update.svg" alt="updateimg"/><p class="text3">Update</p></div>
                   <div class="delete-img"><img src="images/delete.svg" alt="deleteimg"/><p class="text4">Delete</p></div>
                </section>
            </section>
        </article> 
    </section>
       <%--    Insert form section --%>
    <section id="insert" class="insert">
        <article>
            <div class="insertform-container">
                    <div class="insertform">

                        <table style="width:80%;">
                         
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempid" font-size="16px" Font-Bold="true" runat="server" ForeColor="Lime" Text="Employee ID"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempid" runat="server" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="rfvempid" runat="server" ControlToValidate="txtbxempid" ErrorMessage="*Enter the employee id" ForeColor="#999999" ValidationGroup="insert-form"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempname" font-size="16px" Font-Bold="true" runat="server" ForeColor="Lime" Text="Employee Name"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempname" runat="server" ValidationGroup="form" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="rfvempname" runat="server" ControlToValidate="txtbxempname" ErrorMessage="*Enter the employee name" ForeColor="#999999" ValidationGroup="insert-form"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lblempgender" font-size="16px" Font-Bold="true" runat="server" ForeColor="Lime" Text="Employee Gender"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:RadioButton ID="rbtmale" runat="server" ForeColor="Lime" GroupName="gender" Text="Male" ValidationGroup="form" OnCheckedChanged="rbtmale_CheckedChanged" />
                                    &nbsp;&nbsp;
                                    <asp:RadioButton ID="rbtfemale" runat="server" ForeColor="Lime" GroupName="gender" Text="Female" OnCheckedChanged="rbtfemale_CheckedChanged" />
                                    &nbsp;&nbsp;
                                    <asp:RadioButton ID="rbtothers" runat="server" ForeColor="Lime" GroupName="gender"  Text="Others" OnCheckedChanged="rbtothers_CheckedChanged" />
                                </td>
                                <td class="auto-style2"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempage" font-size="16px" Font-Bold="true" runat="server" ForeColor="Lime" Text="Employee Age"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempage" runat="server" ValidationGroup="form" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvempage" runat="server" ControlToValidate="txtbxempage" ErrorMessage="*Enter the employee age" ForeColor="#999999" ValidationGroup="insert-form"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RangeValidator ID="rvage" runat="server" ErrorMessage="Age must be above 18 and below 59" ForeColor="#999999" ControlToValidate="txtbxempage" MaximumValue="59" MinimumValue="18" ValidationGroup="insert-form"></asp:RangeValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempdesign" font-size="16px" Font-Bold="true" runat="server" ForeColor="Lime" Text="Employee Designation"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempdesign" runat="server" ValidationGroup="form" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style5">
                                    <asp:RequiredFieldValidator ID="rfvempdesign" runat="server" ControlToValidate="txtbxempdesign" ErrorMessage="*Enter the employee Designation" ForeColor="#999999" ValidationGroup="insert-form"></asp:RequiredFieldValidator>
                                    </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempdoj" runat="server" font-size="16px" Font-Bold="true" ForeColor="Lime" Text="Employee Date of Joining"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempdoj" runat="server" ValidationGroup="form" TextMode="Date" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ValidationSummary ID="vsform" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="insert-form" ForeColor="#1B2D20" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvempdoj" runat="server" ControlToValidate="txtbxempdoj" ErrorMessage="*Enter the employee date of joining" ForeColor="#999999" ValidationGroup="insert-form"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style1">
                               <center><asp:Button ID="btsubmit" runat="server"  Font-Bold="true" ForeColor="Lime" Text="Submit" ValidationGroup="insert-form" Height="35px" OnClick="btsubmit_Click" Width="90px" /></center>
                                </td>
                            </tr>
                        </table>

                    </div>
            </div>
        </article>
    </section>
       <%--    select form section --%>
    <section id="select" class="select">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <article>
            <div class="selectform-container">
                <div class="selectform">
                    
                    <table style="width:80%;">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblselectmsg" runat="server" ForeColor="Lime" Font-Bold="true" Text="(Particular Record)"></asp:Label>
                                <asp:Label ID="lblempid2" runat="server" ForeColor="Lime" Font-Bold="true" Text="Employee ID"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtbxempid2" runat="server" Height="30px" Width="230px"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="btselect" runat="server" ForeColor="Lime" Height="35px" Font-Bold="true" OnClick="btselect_Click" Text="Select" ValidationGroup="select-form" Width="90px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:ValidationSummary ID="vsselectform" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="select-form" ForeColor="#1B2D20" />
                            </td>
                            <td class="auto-style4">
                                    <asp:RequiredFieldValidator ID="rfvempid2" runat="server" ControlToValidate="txtbxempid2" ErrorMessage="*Enter the employee ID" ForeColor="#999999" ValidationGroup="select-form"></asp:RequiredFieldValidator>
                                    </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lblviewall" runat="server" Text="Veiw All Record" font-size="17px" Font-Bold="true" ForeColor="Lime"></asp:Label>
                                </td>
                            <td class="auto-style4">
                                <asp:Label ID="lblselectmsg1" runat="server" ForeColor="Lime"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btselectall" runat="server" ForeColor="Lime" Height="35px" Font-Bold="true" OnClick="btselectall_Click" Text="View all" Width="90px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </article>
        <article>
            <div class="grid1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="emp_id" HeaderText="Employee ID" />
                        <asp:BoundField DataField="emp_name" HeaderText="Employee Name" />
                        <asp:BoundField DataField="emp_gender" HeaderText="Employee Gender" />
                        <asp:BoundField DataField="emp_age" HeaderText="Employee Age" />
                        <asp:BoundField DataField="emp_designation" HeaderText="Employee Designation" />
                        <asp:BoundField HeaderText="Employee Date of Joining" DataField="emp_doj" />
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
            </div>
        </article>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>
       <%--    update form section --%>
    <section id="update" class="update">
        
    </section>
       <%--    Delete form section --%>
    <section id="delete" class="delete">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <article>
                <div class="deleteform-container">
                    <div class="deleteform">
                    <table style="width:80%;">
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="lblempid4" runat="server" font-size="16px" Font-Bold="True" ForeColor="Lime" Text="Employee ID"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtbxempid5" runat="server" Height="30px" Width="230px"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="btdelete" runat="server" Font-Bold="True" ForeColor="Lime" Text="Remove" OnClick="btdelete_Click" Height="35px" Width="90px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ValidationSummary ID="vsdeleteform" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="delete-form" ForeColor="#1B2D20" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvempid5" runat="server" ControlToValidate="txtbxempid5" ErrorMessage="*Enter the employee ID" ForeColor="#999999" ValidationGroup="delete-form"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="lbldeletemsg" runat="server" font-size="16px" Font-Bold="True" ForeColor="Lime"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            
                        </tr>
                    </table>
                    </div>
                </div>
                </article>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>
  </form>
</body>
    <script src="home.js">
    
    </script>
</html>
