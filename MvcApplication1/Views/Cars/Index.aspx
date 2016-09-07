<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.CarModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContent" runat="server">
<script type="text/javascript">
    $(function () {
        var deleteLinkObj;
        // delete Link
        $('.delete-link').click(function () {
            deleteLinkObj = $(this);  //for future use
            $('#delete-dialog').dialog('open');
            return false; // prevents the default behaviour
        });

        //definition of the delete dialog.
        $('#delete-dialog').dialog({
            autoOpen: false, width: 400, resizable: false, modal: true, //Dialog options
            buttons: {
                "Continue": function () {
                    $.post(deleteLinkObj[0].href, function (data) {  //Post to action
                        if (data == '<%= Boolean.TrueString %>') {
                            deleteLinkObj.closest("tr").hide('slow'); //Hide Row
                            //(optional) Display Confirmation
                        }
                        else {
                            //(optional) Display Error
                        }
                    });
                    $(this).dialog("close");
                },
                "Cancel": function () {
                    $(this).dialog("close");
                }
            }
        });
    });
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>
<table>
    <tr>
        <th></th>
        <th>
            Name
        </th>
        <th>
            Description
        </th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.ActionLink("Delete", "Delete", new { id = item.Id }, new { @class="delete-link"})%>
        </td>
        <td>
            <%: item.Name %>
        </td>
        <td>
            <%: item.Description %>
        </td>
    </tr>  
<% } %>

</table>
<div id="delete-dialog" title="Confirmation">
<p>Are you sure you want to delete this Car?</p>
</div>	

</asp:Content>


