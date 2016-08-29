<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UyeGiris.aspx.cs" Inherits="WebApplication3.UyeGiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript">
        function Giris() {
            //alert("giris tetiklendi");
            //PageMethods.btnUyeGiris_Click(txtKullanıcıAd.value, txtSifre.value);
            //alert("giris basarıyla gerceklesti..");
            var kad = document.getElementById("txtKullanıcıAd").value;
            var sifre = document.getElementById("txtSifre").value;
                $.ajax({
                    url: "UyeGiris.aspx.cs/btnUyeGiris_Click",
                    type: "post",
                    data: { 'kullanıcıad': '' + kad, 'sifre': '' + sifre },
                    success: function (result) {
                        alert(result.toString());
                    },
                    error: function (error) {
                        alert(error);
                    }
                });
            
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <table>
        <tr>
            <td>KullanıcıAdı:</td>
        </tr>
        <tr>
            <td>
                <input id="txtKullanıcıAd" type="text" /></td>
        </tr>
        <tr>
            <td>Sifre:</td>
        </tr>
        <tr>

            <td>
                <input id="txtSifre" type="password" /></td>
        </tr>
        <tr>
            <td>
                <input style="background-color: cyan;" id="btnUyeGiris" type="button" value="LOGİN" onclick="Giris();" /></td>
        </tr>
    </table>
</asp:Content>
