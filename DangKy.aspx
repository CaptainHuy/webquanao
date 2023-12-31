﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 555px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width: 73%; height: 82px;">
        <tr>
            <td colspan="2" style="font-size: larger; font-weight: bold; color: #993300; text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ĐĂNG KÝ</td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Họ tên:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:TextBox ID="txtHoTen" runat="server" Width="246px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" style="color:red" ErrorMessage="Họ tên không được để trống!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Giới tính:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                    <asp:ListItem Value="1" Selected="True">Nam</asp:ListItem>
                    <asp:ListItem Value="2">Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Email:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:TextBox ID="txtEmail" runat="server" Width="246px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" style="color:red" ControlToValidate="txtHoTen" ErrorMessage="Email không được để trống!"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="REVEmail" ControlToValidate="txtEmail" style="color:red" runat="server" ErrorMessage="Định dạng email không đúng!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Tên đăng nhập:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:TextBox ID="txtDN" runat="server" Width="198px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDN" style="color:red" ErrorMessage="Tên đăng nhập không được để trống!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Mật khẩu:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:TextBox ID="txtMK" runat="server" TextMode="Password" Width="192px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMK" style="color:red" ErrorMessage="Không được để trống"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtMK" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" runat="server" ErrorMessage="Tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số" style="color:red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Nhập lại mật khẩu:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" style="color:red" ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMK" ControlToValidate="TextBox5" style="color:red" ErrorMessage="Mật khẩu không khớp!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right">Địa chỉ:</td>
            <td class="auto-style1" style="text-align: left">
                <asp:TextBox ID="txtDiaChi" runat="server" Height="91px" TextMode="MultiLine" Width="237px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFAddress" style="color:red" ControlToValidate="txtDiaChi" runat="server" ErrorMessage="Hãy nhập địa chỉ!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1" style="text-align: left">
                <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="DangKy_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1" style="text-align: left">
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

