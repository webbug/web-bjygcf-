﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gl_ad.aspx.cs" Inherits="admin_about_news_ad" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../resources/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript" src="../resources/scripts/facebox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
                <label>
                    攻略标题</label>
                <asp:TextBox ID="title" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入标题"
                        ControlToValidate="title" ForeColor="red"></asp:RequiredFieldValidator></span>
                <!-- Classes for input-notification: success, error, information, attention -->
                <br />
                <small>简短的攻略描述</small>
            </p>
            <p>
                <label>
                    显示位置</label>
                <asp:TextBox ID="show" runat="server" class="text-input"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入显示位置"
                        ControlToValidate="show" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
             <p>
                <label>
                    攻略简述</label>
                <asp:TextBox ID="jj" runat="server"  Height="125px" Width="70%"
                    TextMode="MultiLine"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*请输入攻略简述"
                        ControlToValidate="jj" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    发布时间</label>
                <a href="#messages" rel="modal">
                    <asp:TextBox ID="time" class="text-input medium-input" runat="server"></asp:TextBox></a>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请选择时间"
                        ControlToValidate="time" ForeColor="red"></asp:RequiredFieldValidator></span>
                <div id="messages" style="display: none">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                    </asp:Calendar>
                </div>
            </p>
            <p>
                <label>
                    对应图片</label><asp:Image 
                    ID="Image1" runat="server" Visible="False" />
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <br />
                <asp:FileUpload ID="upimg" runat="server" class="text-input medium-input datepicker" /><asp:Button
                    ID="Button1" runat="server" Text="上传" class="text-input" 
                    onclick="Button1_Click" Visible="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请上传图片"
                    ControlToValidate="upimg" ForeColor="red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <label>
                    是否为热点推荐</label>
                <asp:DropDownList ID="tj" class="text-input" Width="100px" runat="server">
                    <asp:ListItem Selected="True">否</asp:ListItem>
                    <asp:ListItem>是</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <label>
                    详细内容</label> 
                <FCKeditorV2:FCKeditor ID="context" Height="350px" Width="95%" runat="server">
                </FCKeditorV2:FCKeditor>
            </p>
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="新增" OnClick="Btn_add_Click" />
                 <asp:Button ID="Btn_up" class="button" runat="server" Text="保存" 
                    OnClick="Btn_up_Click" />
            </p>
        </fieldset>
    </div>
    <!-- End #messages -->
    <script type="text/javascript">
        function calshow() {
            document.getElementById('calendar').style.display = "block";
        }
      
    </script>
    </form>
</body>
</html>
