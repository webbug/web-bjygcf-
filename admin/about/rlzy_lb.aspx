﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rlzy_lb.aspx.cs" Inherits="admin_about_news_lb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>北京一格财富投资咨询有限公司</title>
    <link rel="stylesheet" href="../resources/css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="screen" />
</head>
<body>
    <form runat="server">
    <div id="main-content1">
        <div class="content-box-content">
            <div class="tab-content" id="tab2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [id], [zp_zw], [zp_rs], [zp_lx], [zp_dq],[zp_bm],[zp_qd] FROM [bjygcf_rc]">
                </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("zp_zw")%>
                            </td>
                            <td>
                                <%#Eval("zp_rs")%>
                            </td>
                            <td>
                                <%#Eval("zp_lx")%>
                            </td>
                            <td>
                                <%#Eval("zp_dq")%>
                            </td>
                            <td>
                                <%#Eval("zp_bm")%>
                            </td>
                            <td>
                                <%#Eval("zp_qd")%>
                            </td>
                            <td>
                                <!-- Icons -->
                                <a href="rlzy_ad.aspx?zpid=<%#Eval("id") %>" title="Edit">
                                    <img src="../resources/images/icons/pencil.png" alt="Edit" /></a> <a href="del.aspx?cz=sc&bm=bjygcf_rc&id=<%#Eval("id") %>"
                                        title="Delete">
                                        <img src="../resources/images/icons/cross.png" alt="Delete" /></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                            <th id="Th1" runat="server" width="20%">
                                                招聘职位
                                            </th>
                                            <th id="Th2" runat="server" width="10%">
                                                招聘人数
                                            </th>
                                            <th id="Th3" runat="server" width="15%">
                                                招聘类型
                                            </th>
                                            <th id="Th4" runat="server" width="15%">
                                                招聘地区
                                            </th>
                                            <th id="Th6" runat="server" width="15%">
                                                招聘部门
                                            </th>
                                            <th id="Th7" runat="server" width="15%">
                                                招聘渠道
                                            </th>
                                            <th id="Th5" runat="server" width="10%">
                                                操作
                                            </th>
                                        </tr>
                                        <tr runat="server" id="itemPlaceholder">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server">
                                    <div class="pagination">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="ListView1">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False"
                                                    ShowPreviousPageButton="true" FirstPageText="首页" LastPageText="尾页" ButtonCssClass="fya" />
                                                <asp:NumericPagerField ButtonCount="4" CurrentPageLabelCssClass="number current"
                                                    ButtonType="Link" NumericButtonCssClass="number" NextPreviousButtonCssClass="number" />
                                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="true"
                                                    ShowPreviousPageButton="False" FirstPageText="首页" LastPageText="尾页" ButtonCssClass="fya" />
                                            </Fields>
                                        </asp:DataPager>
                                    </div>
                                    <!-- End .pagination -->
                                    <div class="clear">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
