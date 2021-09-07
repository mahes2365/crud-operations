<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Operations</title>
    <link rel="stylesheet" href="home.css" />
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
        .auto-style8 {
            height: 50px;
            width: 96px;
        }
        .auto-style9 {
            width: 96px;
        }
        </style>
</head>
<body>
   <form id="form1" runat="server">
       <%--    Home section --%>
    <section id="home" class="home">
        <aside class="nav">
            <nav><a id="a1" href="#home">Home</a></nav>
            <nav><a id="a2" href="#insert">Insertion</a></nav>
            <nav><a id="a3" href="#select">Selection</a></nav>
            <nav><a id="a4" href="#update">Updation</a></nav>
            <nav><a id="a5" href="#delete">Deletion</a></nav>
        </aside>
        <article class="home-content">
            <section class="img-container">
                <img src="images/welcomeimg.svg" alt="welcomeimg"  />
            </section>
            <section class="content-container">
                <article>
                    <h2>Welcome</h2>
                    <p>Here you can perform</p>
                </article>
                <section class="thumb-img">
                   <div class="insert-img"><img src="images/insert.svg" alt="insertimg"/><p class="text1">Insert</p></div>
                   <div class="select-img"><img src="images/select.svg" alt="selectimg"/><p class="text2">Select</p></div>
                   <div class="update-img"><img src="images/updateimg.svg" alt="updateimg"/><p class="text3">Update</p></div>
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
                                    <asp:Label ID="lblempid" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee ID"></asp:Label>
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
                                    <asp:Label ID="lblempname" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Name"></asp:Label>
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
                                    <asp:Label ID="lblempgender" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Gender"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:RadioButton ID="rbtmale" runat="server" ForeColor="#D1001C" GroupName="gender" Text="Male" ValidationGroup="form" OnCheckedChanged="rbtmale_CheckedChanged" />
                                    &nbsp;&nbsp;
                                    <asp:RadioButton ID="rbtfemale" runat="server" ForeColor="#D1001C" GroupName="gender" Text="Female" OnCheckedChanged="rbtfemale_CheckedChanged" />
                                    &nbsp;&nbsp;
                                    <asp:RadioButton ID="rbtothers" runat="server" ForeColor="#D1001C" GroupName="gender"  Text="Others" OnCheckedChanged="rbtothers_CheckedChanged" />
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
                                    <asp:Label ID="lblempage" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Age"></asp:Label>
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
                                    <asp:Label ID="lblempdesign" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Designation"></asp:Label>
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
                                    <asp:Label ID="lblempdoj" runat="server" font-size="16px" Font-Bold="True" ForeColor="#D1001C" Text="Employee Date of Joining"></asp:Label>
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
                               <center><asp:Button ID="btsubmit" runat="server"  Font-Bold="true" ForeColor="#D1001C" Text="Submit" ValidationGroup="insert-form" Height="35px" OnClick="btsubmit_Click" Width="90px" /></center>
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
                                <asp:Label ID="lblselectmsg" runat="server" ForeColor="#D1001C" Font-Bold="True" Text="(Particular Record)"></asp:Label>
                                <asp:Label ID="lblempid2" runat="server" ForeColor="#D1001C" Font-Bold="True" Text="Employee ID"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtbxempid2" runat="server" Height="30px" Width="230px"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="btselect" runat="server" ForeColor="#D1001C" Height="35px" Font-Bold="true" OnClick="btselect_Click" Text="Select" ValidationGroup="select-form" Width="90px" />
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
                                <asp:Label ID="lblviewall" runat="server" Text="Veiw All Record" font-size="17px" Font-Bold="True" ForeColor="#D1001C"></asp:Label>
                                </td>
                            <td class="auto-style4">
                                <asp:Label ID="lblselectmsg1" runat="server" ForeColor="#D1001C"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btselectall" runat="server" ForeColor="#D1001C" Height="35px" Font-Bold="true" OnClick="btselectall_Click" Text="View all" Width="90px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </article>
        <article>
            <div class="grid1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="emp_id" HeaderText="Employee ID" />
                        <asp:BoundField DataField="emp_name" HeaderText="Employee Name" />
                        <asp:BoundField DataField="emp_gender" HeaderText="Employee Gender" />
                        <asp:BoundField DataField="emp_age" HeaderText="Employee Age" />
                        <asp:BoundField DataField="emp_designation" HeaderText="Employee Designation" />
                        <asp:BoundField HeaderText="Employee Date of Joining" DataField="emp_doj" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerSettings FirstPageText="first" LastPageText="last" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </article>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>
       <%--    update form section --%>
    <section id="update" class="update">
        <article>
            <div class="updateform-container">
                    <div class="updateform">
                        <table style="width:80%;">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempid3" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee ID"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempid3" runat="server" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvupdatedesign2" runat="server" ControlToValidate="txtbxempid3" ErrorMessage="*Enter the employee id" ForeColor="#999999" ValidationGroup="update-form"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempname2" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Name"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempname2" runat="server" ValidationGroup="form" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvupdatedesign1" runat="server" ControlToValidate="txtbxempname2" ErrorMessage="*Enter the employee name" ForeColor="#999999" ValidationGroup="update-form"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lblempgender2" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Gender"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:RadioButton ID="rbtmale2" runat="server" ForeColor="#D1001C" OnCheckedChanged="rbtmale2_CheckedChanged" Text="Male" />
&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="rbtfemale2" runat="server" ForeColor="#D1001C" OnCheckedChanged="rbtfemale2_CheckedChanged" Text="Female" />
&nbsp;&nbsp;
                                    <asp:RadioButton ID="rbtothers2" runat="server" ForeColor="#D1001C" OnCheckedChanged="rbtothers2_CheckedChanged" Text="Others" />
                                    &nbsp;
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
                                    <asp:Label ID="lblempage2" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Age"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempage2" runat="server" ValidationGroup="form" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                <asp:RequiredFieldValidator ID="rfvupdatedesign0" runat="server" ControlToValidate="txtbxempdesign2" ErrorMessage="*Enter the employee designation" ForeColor="#999999" ValidationGroup="update-form"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RangeValidator ID="rvupdateage" runat="server" ErrorMessage="Age must be above 18 and below 59" ForeColor="#999999" ControlToValidate="txtbxempage2" MaximumValue="59" MinimumValue="18" ValidationGroup="insert-form"></asp:RangeValidator>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempdesign2" font-size="16px" Font-Bold="True" runat="server" ForeColor="#D1001C" Text="Employee Designation"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempdesign2" runat="server" ValidationGroup="form" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvupdatedesign" runat="server" ControlToValidate="txtbxempdesign2" ErrorMessage="*Enter the employee designation" ForeColor="#999999" ValidationGroup="update-form"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblempdoj2" runat="server" font-size="16px" Font-Bold="True" ForeColor="#D1001C" Text="Employee Date of Joining"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtbxempdoj2" runat="server" ValidationGroup="form" TextMode="Date" Height="30px" Width="230px"></asp:TextBox>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                <asp:RequiredFieldValidator ID="rfvupdatedoj" runat="server" ControlToValidate="txtbxempdoj2" ErrorMessage="*Enter the employee date of joining" ForeColor="#999999" ValidationGroup="update-form"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:ValidationSummary ID="vsupdateform" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="update-form" ForeColor="#1B2D20" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                           
                        </table>
                    </div>
                <div class="updatefield">
                    <div>
                         
                    <table style="width:80%;">
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="lblempleeid4" runat="server" font-size="16px" Font-Bold="True" ForeColor="#D1001C" Text="Employee ID"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtbxempid4" runat="server" Height="30px" Width="251px"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="btupdate" runat="server" ForeColor="#D1001C" Font-Bold="true" Height="35px" Text="Update" Width="90px" OnClick="btupdate_Click" ValidationGroup="update-form" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                    &nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbxempid4" ErrorMessage="*Enter the employee ID" ForeColor="#999999" ValidationGroup="update-form"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                            <td>
                                &nbsp;</td>
                            
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
        </article>
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
                                <asp:Label ID="lblempid4" runat="server" font-size="16px" Font-Bold="True" ForeColor="#D1001C" Text="Employee ID"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtbxempid5" runat="server" Height="30px" Width="230px"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="btdelete" runat="server" Font-Bold="True" ForeColor="#D1001C" Text="Remove" OnClick="btdelete_Click" Height="35px" Width="90px" ValidationGroup="delete-form" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ValidationSummary ID="vsdeleteform" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="delete-form" ForeColor="#1B2D20" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvempid5" runat="server" ControlToValidate="txtbxempid5" ErrorMessage="*Enter the employee ID" ForeColor="#999999" ValidationGroup="delete-form"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="lbldeletemsg" runat="server" font-size="16px" Font-Bold="True" ForeColor="#D1001C"></asp:Label>
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
    <script src="Home.js">
    
    </script>
</html>
