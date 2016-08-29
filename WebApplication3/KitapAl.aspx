<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KitapAl.aspx.cs" Inherits="WebApplication3.KitapAl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-3.1.0.min.js"></script>
    <script>

        function ara() {
            alert("djhgjhgjhghjjnfkln");
            var combo = document.getElementById("Select1");
            PageMethods.Combodol(combo.selectedIndex, txt_ArananKitap.value);
        }
        $.ajax({
            url: 'KitapAl.aspx.cs/Combodol',
            type: 'post',
            contentType: 'application/json',
            dataType: 'json',
            success: function (result) {
                alert("basarılı");
                var data = JSON.parse(result.d);
                alert(data);

            },
            error: function (error) {
                alert(error);
            },
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager EnablePageMethods="true" runat="server" />
    <table>
        <tr>
            <td>arama kategorisi:</td>
        </tr>
        <tr>
            <td>
                <select id="Select1">
                    <option>Yazara Göre</option>
                    <option>Kitaba Göre</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>arama:</td>
        </tr>
        <tr>
            <td>
                <input id="txt_ArananKitap" type="text" /></td>
        </tr>
        <tr>
            <td>
                <input id="btnara" type="button" value="Ara" onclick="ara();" /></td>
        </tr>

    </table>

</asp:Content>
