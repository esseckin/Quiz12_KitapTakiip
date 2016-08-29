<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UyeKayıt.aspx.cs" Inherits="WebApplication3.UyeKayıt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript">
        function kayıtet() {
            PageMethods.btnUyeKayıt_Click(txtAd.value,txtSoyad.value,txtKullanıcıAd.value,txtkSifre.value, txtSifretekrar.value);
            alert("kayıt basarıyla gerceklesti..");
            form1.txtAd.value = "";
            form1.txtSoyad.value = "";
            form1.txtKullanıcıAd.value = "";
            form1.txtkSifre.value = "";
            form1.txtSifretekrar.value = "";
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <table id="table">
            <tr>
                <td>Ad:</td>
            </tr>
            <tr>
                <td>
                     <input id="txtAd" type="text" />
                </td>
            </tr>
            <tr>
                <td>Soyad:</td>
            </tr>
            <tr>
                <td>
                    <input id="txtSoyad" type="text" />

                </td>
            </tr>
            <tr>
                <td>KullanıcıAdı:</td>
            </tr>
            <tr>
                <td>
                    <input id="txtKullanıcıAd" type="text" />

                </td>
            </tr>
            <tr>
                <td>Sifre:</td>
            </tr>
            <tr>
                <td>
                    <input id="txtkSifre" type="password" />

                </td>
            </tr>
            <tr>
                <td>Sifre tekrar:</td>
            </tr>
            <tr>
                <td>
                    <input id="txtSifretekrar" type="password" />

                </td>
            </tr>
            <tr>
                <td>
                    <input style="background-color: cyan;" id="btnUyeKayıt" type="button" value="KAYDOL" onclick="kayıtet();" /></td>
            </tr>
        </table>
</asp:Content>

