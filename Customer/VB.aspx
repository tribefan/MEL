F<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MEL Tracker</title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            width: 550px;
            margin-bottom: -1px;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        .auto-style1 {
            margin-right: 246px;
        }
    </style>
      <h1 style="text-align:center">MEL Tracker</h1>

</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="gvMELPeople" runat="server" AutoGenerateColumns="false" CssClass="auto-style1" Width="1479px">
        <Columns>
            <asp:TemplateField HeaderText="MEL Id" ItemStyle-Width="110px" ItemStyle-CssClass="MEL_Id">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("MEL_Id") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name" ItemStyle-Width="550px" ItemStyle-CssClass="firstName">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("firstName") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("firstName") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Middle Name" ItemStyle-Width="250px" ItemStyle-CssClass="middleName">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("middleName") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("middleName") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Last Name" ItemStyle-Width="350px" ItemStyle-CssClass="lastName">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("lastName") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("lastName") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Passport Number" ItemStyle-Width="150px" ItemStyle-CssClass="passportNumber">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("passportNumber") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("passportNumber") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Passport Expire Date" ItemStyle-Width="150px" ItemStyle-CssClass="passportExpirationDate">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("passportExpirationDate") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("passportExpirationDate") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone Number" ItemStyle-Width="250px" ItemStyle-CssClass="phoneNumber">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("phoneNumber") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("phoneNumber") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Address" ItemStyle-Width="250px" ItemStyle-CssClass="address">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("address") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("address") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Landlord Name" ItemStyle-Width="550px" ItemStyle-CssClass="landlordName">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("landlordName") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("landlordName") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="Landlord Phone" ItemStyle-Width="250px" ItemStyle-CssClass="landlordPhoneNumber">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("landlordPhoneNumber") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("landlordPhoneNumber") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
           <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton Text="Edit" runat="server" CssClass="Edit" />
                    <asp:LinkButton Text="Update" runat="server" CssClass="Update" Style="display: none" />
                    <asp:LinkButton Text="Cancel" runat="server" CssClass="Cancel" Style="display: none" />
                    <asp:LinkButton Text="Delete" runat="server" CssClass="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br /><br />
    <p><b>Add new MEL Record:</b></p>
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">
                First Name:<br />
                <asp:TextBox ID="txtFirstName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Middle Name:<br />
                <asp:TextBox ID="txtMiddleName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Last Name:<br />
                <asp:TextBox ID="txtLastName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Passport Number:<br />
                <asp:TextBox ID="txtPassportNumber" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Passport Expiration Date:<br />
                <asp:TextBox ID="txtPassportExpirationDate" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Phone Number:<br />
                <asp:TextBox ID="txtPhoneNumber" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Address:<br />
                <asp:TextBox ID="txtAddress" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Landlord Name:<br />
                <asp:TextBox ID="txtLandlordName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Landlord Phone:<br />
                <asp:TextBox ID="txtLandlordPhone" runat="server" Width="140" />
            </td>
             <td style="width: 100px">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Add" />
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $.ajax({
                    type: "POST",
                    url: "VB.aspx/GetMELPeople",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccess
                });
            });

            function OnSuccess(response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("Table");
                var row = $("[id*=gvMELPeople] tr:last-child");

                //alert("running OnSuccess");

                if (customers.length > 0) {
                    //alert("customer length= " + customers.length)
                    $.each(customers, function () {
                        var customer = $(this);
                        //alert("This contains: " + $(this).find("firstName").text())
                        AppendRow(row, $(this).find("MEL_Id").text(), $(this).find("firstName").text(), $(this).find("middleName").text(),
                            $(this).find("lastName").text(), $(this).find("passportNumber").text(),
                            $(this).find("passportExpirationDate").text(), $(this).find("phoneNumber").text(),
                            $(this).find("address").text(),$(this).find("landlordName").text(),$(this).find("landlordPhoneNumber").text())
                        row = $("[id*=gvMELPeople] tr:last-child").clone(true);
                    });
                } else {
                    row.find(".Edit").hide();
                    row.find(".Delete").hide();
                    row.find("span").html('&nbsp;');
                }
            }

            function AppendRow(row, melId, firstname, middlename, lastname, passportnumber,
                passportexpirationdate, phonenumber, MELaddress, landlordname, landlordphonenumber) {
                //alert("name: " + firstname + " " + middlename + " " + lastname + "  passport: " + passportnumber + "    landlord: " + landlordname + "    "+ landlordphonenumber);
                //alert("landlord: " + landlordName + "    "+ landlordPhoneNumber)

                //Bind MEL_Id.
                $(".MEL_Id", row).find("span").html(melId);

                //Bind Name.
                $(".firstName", row).find("span").html(firstname);
                $(".firstName", row).find("input").val(firstname);

                $(".middleName", row).find("span").html(middlename);
                $(".middleName", row).find("input").val(middlename);

                $(".lastName", row).find("span").html(lastname);
                $(".lastName", row).find("input").val(lastname);

                $(".passportNumber", row).find("span").html(passportnumber);
                $(".passportNumber", row).find("input").val(passportnumber);

                $(".passportExpirationDate", row).find("span").html(passportexpirationdate);
                $(".passportExpirationDate", row).find("input").val(passportexpirationdate);

                $(".phoneNumber", row).find("span").html(phonenumber);
                $(".phoneNumber", row).find("input").val(phonenumber);

                $(".address", row).find("span").html(MELaddress);
                $(".address", row).find("input").val(MELaddress);

                $(".landlordName", row).find("span").html(landlordname);
                $(".landlordName", row).find("input").val(landlordname);

                $(".landlordPhoneNumber", row).find("span").html(landlordphonenumber);
                $(".landlordPhoneNumber", row).find("input").val(landlordphonenumber);

                row.find(".Edit").show();
                row.find(".Delete").show();
                $("[id*=gvMELPeople]").append(row);
            }

            //Add event handler.
            //TODO add new columns to this function
            $("body").on("click", "[id*=btnAdd]", function () {
                //var txtName = $("[id*=txtName]");
                //var txtCountry = $("[id*=txtCountry]");
                var txtFirstName = $("[id*=txtFirstName]");
                var txtMiddleName = $("[id*=txtMiddleName]");
                var txtLastName = $("[id*=txtLastName]");
                var txtPassportNumber = $("[id*=txtPassportNumber]");
                var txtPassportExpirationDate = $("[id*=txtPassportExpirationDate]");
                var txtPhoneNumber = $("[id*=txtPhoneNumber]");
                var txtAddress = $("[id*=txtAddress]");
                var txtLandlordName = $("[id*=txtLandlordName]");
                var txtLandlordPhone = $("[id*=txtLandlordPhone]");
                //var recordToAdd = '{ firstname: "' + txtFirstName.val() + '", middlename: "' + txtMiddleName.val() + '",\
                //        lastname: "' + txtLastName.val() + '", \
                //        passportnumber: "' + txtPassportNumber.val() + '", \
                //        passportexpirationdate: "' + txtPassportExpirationDate.val() + '", \
                //        phonenumber: "' + txtPhoneNumber.val() + '", \
                //        MELaddress: "' + txtAddress.val() + '", landlordname: "' + txtLandlordName.val() + '", \
                //        landlordphonenumber: "' + txtLandlordPhone.val() + '" }';   
                var recordToAdd = { firstname: 'Joe', middlename: 'James', lastname: 'Schmo', passportnumber: '09876', passportexpirationdate: '1/1/1111', phonenumber: '111-2222', MELaddress: '123 Main St', landlordname: 'jim smith', landlordphonenumber: '333-4444' };
                var dataToAdd = '{firstname: "' + txtFirstName.val() + '", middlename: "' + txtMiddleName.val() + '",\
                    lastname: "' + txtLastName.val() + '",\
                    passportnumber: "' + txtPassportNumber.val() + '",\
                    passportexpiration: "' + txtPassportExpirationDate.val() + '",\
                    phonenumber: "' + txtPhoneNumber.val() + '",\
                    address: "' + txtAddress.val() + '",\
                    landlordname: "' + txtLandlordName.val() + '",\
                    landlordphone: "' + txtLandlordPhone.val() + '"\
                    }';
                //alert(recordToAdd);
                //document.write(recordToAdd);

               $.ajax({
                    type: "POST",
                    url: "VB.aspx/InsertMELRecord",
                    //data: '{name: "' + txtName.val() + '", country: "' + txtCountry.val() + '" }',
                    data: dataToAdd,
                    //data: recordToAdd,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var row = $("[id*=gvMELPeople] tr:last-child");
                        if ($("[id*=gvMELPeople] tr:last-child span").eq(0).html() != "&nbsp;") {
                            row = row.clone();
                        }
                        //AppendRow(row, response.d, txtName.val(), txtCountry.val());
                        AppendRow(row, response.d, txtFirstName.val(), txtMiddleName.val(),txtLastName.val(),txtPassportNumber.val(),txtPassportExpirationDate.val(),txtPhoneNumber.val(),txtAddress.val(),txtLandlordName.val(),txtLandlordPhone.val());
                        //txtName.val("");
                        //txtCountry.val("");
                        txtFirstName.val("");
                        txtMiddleName.val("");
                        txtLastName.val("");
                        txtPassportNumber.val("");
                        txtPassportExpirationDate.val("");
                        txtPhoneNumber.val("");
                        txtAddress.val("");
                        txtLandlordName.val("");
                        txtLandlordPhone.val("");
                   }

                });
                return false;
            });

            //Edit event handler.
            $("body").on("click", "[id*=gvMELPeople] .Edit", function () {
                var row = $(this).closest("tr");
                $("td", row).each(function () {
                    if ($(this).find("input").length > 0) {
                        $(this).find("input").show();
                        $(this).find("span").hide();
                    }
                });
                row.find(".Update").show();
                row.find(".Cancel").show();
                row.find(".Delete").hide();
                $(this).hide();
                return false;
            });

            //Update event handler.
            $("body").on("click", "[id*=gvMELPeople] .Update", function () {
                var row = $(this).closest("tr");
                $("td", row).each(function () {
                    if ($(this).find("input").length > 0) {
                        var span = $(this).find("span");
                        var input = $(this).find("input");
                        span.html(input.val());
                        span.show();
                        input.hide();
                    }
                });
                row.find(".Edit").show();
                row.find(".Delete").show();
                row.find(".Cancel").hide();
                $(this).hide();
                //TODO add columns to this function
                var MEL_Id = row.find(".MEL_Id").find("span").html();
                //var name = row.find(".Name").find("span").html();
                //var country = row.find(".Country").find("span").html();
                var firstName = row.find(".firstName").find("span").html();
                var middleName = row.find(".middleName").find("span").html();
                var lastName = row.find(".lastName").find("span").html();
                var passportNumber = row.find(".passportNumber").find("span").html();
                var passportExpirationDate = row.find(".passportExpirationDate").find("span").html();
                var phoneNumber = row.find(".phoneNumber").find("span").html();
                var address = row.find(".address").find("span").html();
                var landlordName = row.find(".landlordName").find("span").html();
                var landlordPhoneNumber = row.find(".landlordPhoneNumber").find("span").html();
                var dataToUpdate = '{MEL_Id: ' + MEL_Id + ',\
                    firstname: "' + firstName + '",\
                    middlename: "' + middleName + '",\
                    lastname: "' + lastName + '",\
                    passportnumber: "' + passportNumber + '",\
                    passportexpiration: "' + passportExpirationDate + '",\
                    phonenumber: "' + phoneNumber + '",\
                    address: "' + address + '",\
                    landlordname: "' + landlordName + '",\
                    landlordphone: "' + landlordPhoneNumber + '"\
                   }';
                //alert(dataToUpdate);
                $.ajax({
                    type: "POST",
                    url: "VB.aspx/UpdateMELRecord",
                    //data: '{MEL_Id: ' + MEL_Id + ', name: "' + name + '", country: "' + country + '" }',
                    data: dataToUpdate,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json"
                });

                return false;
            });

            //Cancel event handler.
            $("body").on("click", "[id*=gvMELPeople] .Cancel", function () {
                var row = $(this).closest("tr");
                $("td", row).each(function () {
                    if ($(this).find("input").length > 0) {
                        var span = $(this).find("span");
                        var input = $(this).find("input");
                        input.val(span.html());
                        span.show();
                        input.hide();
                    }
                });
                row.find(".Edit").show();
                row.find(".Delete").show();
                row.find(".Update").hide();
                $(this).hide();
                return false;
            });

            //Delete event handler.
            $("body").on("click", "[id*=gvMELPeople] .Delete", function () {
                if (confirm("Do you want to delete this row?")) {
                    var row = $(this).closest("tr");
                    var MEL_Id = row.find("span").html();
                    $.ajax({
                        type: "POST",
                        url: "VB.aspx/DeleteMELRecord",
                        data: '{MEL_Id: ' + MEL_Id + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            if ($("[id*=gvMELPeople] tr").length > 2) {
                                row.remove();
                            } else {
                                row.find(".Edit").hide();
                                row.find(".Delete").hide();
                                row.find("span").html('&nbsp;');
                            }
                        }
                    });
                }

                return false;
            });
    </script>
 &nbsp;</p>
    </form>
</body>
</html>
