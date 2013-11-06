<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="submitform.aspx.cs" Inherits="AslaWebsite.external.submitform1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>ASLA Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- ===================== Touch Icons ===================== -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57-precomposed.png">

    <!-- ===================== CSS ===================== -->    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>  
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/css/bootstrap/bootstrap-responsive.min.css">    

    <!-- Site specific - CSS -->   
    <link rel="stylesheet" href="/css/theme_light/prettify.css">
    
    <!-- Common - CSS -->  
    <link rel="stylesheet" href="/css/theme_light/common.css">
    <link rel="stylesheet" href="/css/theme_light.css" class="style_set">
    
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 131px;
        }
        .style5
    {
        width: 131px;
        height: 18px;
    }
    .style8
    {
        height: 18px;
    }
    .style9
    {
        width: 173px;
    }
    .style10
    {
        width: 173px;
        height: 18px;
    }
    .style11
    {
        width: 144px;
    }
    .style12
    {
        width: 144px;
        height: 18px;
    }
        .style13
        {
            width: 140px;
        }
        .style14
        {
            width: 140px;
            height: 18px;
        }
        .style15
        {
            width: 162px;
        }
        .style16
        {
            width: 162px;
            height: 18px;
        }
        .style19
        {
            width: 179px;
        }
        .style20
        {
            width: 392px;
        }
        .style22
        {
            width: 466px;
        }
        .style23
        {
            width: 179px;
            height: 17px;
        }
        .style24
        {
            width: 385px;
            height: 17px;
        }
        .style25
        {
            height: 17px;
        }
        .style26
        {
            width: 118px;
        }
        .style27
        {
            width: 385px;
        }
        .style28
        {
            width: 179px;
            height: 26px;
        }
        .style29
        {
            width: 385px;
            height: 26px;
        }
        .style30
        {
            height: 26px;
        }
        .auto-style2 {
            width: 50px;
            height: 18px;
        }
        .auto-style3 {
            width: 50px
        }
        .auto-style5 {
            width: 49px;
            height: 17px;
        }
        .auto-style6 {
            width: 49px;
            height: 26px;
        }
        .auto-style7 {
            width: 49px
        }
        .auto-style8 {
            width: 51px
        }
    </style>
     <script type = "text/javascript">
         function ValidateCheckBox(sender, args) {
             if (document.getElementById("<%=CheckBox1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
</head>
<body align="center">
    <form id="form1" runat="server">
    <div>
    
         <table class="style1">
        <tr>
            <td class="auto-style3">
                 &nbsp;</td>
            <td class="style2">
                 First Name:&nbsp;&nbsp;</td>
            <td class="style11">
                 <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>  
             </td>
            <td class="style15">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ErrorMessage="*Enter First Name" ForeColor="#FF3300" 
                     ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                 School/Organization address: </td>
            <td class="style13">
                 <asp:TextBox ID="SchoolOrganizationAddress" runat="server"></asp:TextBox>  
             </td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="SchoolOrganizationAddress" 
                     ErrorMessage="* Enter School/Org. Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="style5">
                Last Name:</td>
            <td class="style12">
                 <asp:TextBox ID="LastName" runat="server"></asp:TextBox>  
                </td>
            <td class="style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="LastName" ErrorMessage="* Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10">
                Teacher:</td>
            <td class="style14">
                 <asp:TextBox ID="Teacher" runat="server"></asp:TextBox>  
             </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Teacher" ErrorMessage="* Enter Teacher" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="style2">
                School Board:</td>
            <td class="style11">
                 <asp:DropDownList ID="SchoolBoard" runat="server"  DataSourceID="SqlDataSource1" DataTextField="DistrictName" DataValueField="DistrictName"></asp:DropDownList>  
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AslaDevConnectionString %>" SelectCommand="SELECT [DistrictName] FROM [District]"></asp:SqlDataSource>
             </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="SchoolBoard" ErrorMessage="* Enter School Board" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                Email:</td>
            <td class="style13">
                 <asp:TextBox ID="Email" runat="server"></asp:TextBox>  
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Email" ErrorMessage="* Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="style2">
                Phone Number:</td>
            <td class="style11">
                 <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>  
             </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="PhoneNumber" ErrorMessage="* Enter Phone Number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                City:</td>
            <td class="style13">
                 <asp:TextBox ID="City" runat="server"></asp:TextBox>  
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="City" ErrorMessage="* Enter City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="style2">
                School Organization:</td>
            <td class="style11">
                 <asp:TextBox ID="SchoolOrganization" runat="server"></asp:TextBox>  
             </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="SchoolOrganization" ErrorMessage="* Enter School/Org." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                Postal Code:</td>
            <td class="style13">
                 <asp:TextBox ID="PostalCode" runat="server"></asp:TextBox>  
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="PostalCode" ErrorMessage="* Enter Postal code" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
        <br />
    Please Note: We cannot guarantee specific times or dates but will do our best to accomodate your requests. 
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style19">
                Time of Day:</td>
            <td class="style27">
&nbsp;<br />
                <asp:DropDownList ID="Time" runat="server">
                 <asp:ListItem>Select Time</asp:ListItem>
                    <asp:ListItem>a.m.</asp:ListItem>
                    <asp:ListItem>p.m.</asp:ListItem>
                    <asp:ListItem>AnyTime</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="* Enter Time of Day" ControlToValidate="Time" 
                    ForeColor="Red" InitialValue="SelectTime"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style19">
                Approximate&nbsp; time frame for presentation:</td>
            <td class="style27">
                <br />
                 <asp:TextBox ID="TimeFrame" runat="server"></asp:TextBox>  
                 <br />
                e.g October/November (a 1-2 month window recommended.)<br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="* Enter Time Frame" ControlToValidate="TimeFrame" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="style23">
                Number of classes:</td>
            <td class="style24">
                <asp:DropDownList ID="NumberOfClasses" runat="server">
                    <asp:ListItem>Select Class</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="NoOfClassesDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:AslaDevConnectionString %>" SelectCommand="SELECT [NumberOfClasses] FROM [Event]"></asp:SqlDataSource>
            </td>
            <td class="style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ErrorMessage="* Enter Number of Classes" 
                    ControlToValidate="NumberOfClasses" ForeColor="Red" 
                    InitialValue="SelectClass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style19">
                Total number of Students/Participants:</td>
            <td class="style27">
                <br />
                 <asp:TextBox ID="ParticipatingStudents" runat="server"></asp:TextBox>  
                 <br />
                 (A minimum of 15 students required.)<br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ErrorMessage="* Enter Number of Participants" 
                    ControlToValidate="ParticipatingStudents" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="style28">
                Grade Level:</td>
            <td class="style29">
                <asp:DropDownList ID="GradeLevel" runat="server" Height="30px" Width="112px" DataSourceID="GradeLevelDropDown" DataTextField="GradeLevel" DataValueField="GradeLevel">
                </asp:DropDownList>
                <asp:SqlDataSource ID="GradeLevelDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:AslaDevConnectionString %>" SelectCommand="SELECT [GradeLevel] FROM [Event]"></asp:SqlDataSource>
                
                <br />
            </td>
            <td class="style30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ErrorMessage="* Enter Grade Level" ControlToValidate="GradeLevel" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style19">
                Split Grade Classes:</td>
            <td class="style27">
                <br />
                 <br />
                 <asp:TextBox ID="SplitGradeClasses" runat="server"></asp:TextBox>  
                 <br />
                (If any of the classes included in the request are split grades,please provide 
                details.)</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style19">
                Special Event:</td>
            <td class="style27">
                <br />
                 <asp:TextBox ID="SpecialEvent" runat="server" Height="21px"></asp:TextBox>  
                 <br />
                 (If this is not a request for a standard classroom presentation,please provide 
                details.)<br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style19">
                Topic:</td>
            <td class="style27">
                <asp:DropDownList ID="Topic" runat="server" Height="30px" Width="363px" DataSourceID="EventNameDropDown" DataTextField="EventName" DataValueField="EventName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="EventNameDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:AslaDevConnectionString %>" SelectCommand="SELECT [EventName] FROM [Event]"></asp:SqlDataSource>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ErrorMessage="* Enter Topic" ControlToValidate="Topic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
        <br />
        <br />

    <table class="style1">
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="style20">
                Comments about the request&nbsp; (special considerations?):</td>
            <td>
                Description of the request:</td>
        </tr>
        <tr>
            <td class="auto-style8">
                 &nbsp;</td>
            <td class="style20">
                 <asp:TextBox ID="Comments" runat="server" Height="91px" 
                    Width="360px"></asp:TextBox>  
             </td>
            <td>
                 <asp:TextBox ID="Description" runat="server" Height="91px" 
                    Width="360px"></asp:TextBox>  
             </td>
        </tr>
    </table>
      <br />
        <br />
    <table class="style1">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="style26">
                <asp:CheckBox ID="CheckBox1" runat="server" style="text-align: center"  
                     Text="Accept" />
            </td>
            <td class="style22">
                <br />
                I have read the scientist and engineer visit procedure and understand that a 
                teacher must be present at all times and in charge of classroom management.<br />
                I will supply feedback to CSN promptly.<br />
                <br />
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="Required" ClientValidationFunction = "ValidateCheckBox" 
                    ForeColor="Red"></asp:CustomValidator>
            </td>
            
        </tr>
        <tr>
      

            <td class="auto-style3">
                &nbsp;</td>
      

            <td class="style26">
                &nbsp;</td>
            <td class="style22">
                
                <asp:Button ID="Submit" runat="server" Text="Submit Request" 
                     onclick="Submit_Click" />
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    
    
    
    
    </div>
    </form>
</body>
</html>
