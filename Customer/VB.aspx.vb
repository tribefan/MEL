Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Services
Imports System.IO
Imports Word = Microsoft.Office.Interop.Word

Partial Class VB
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.BindDummyRow()
        End If
    End Sub

    Private Sub BindDummyRow()
        Dim dummy As New DataTable()
        dummy.Columns.Add("MEL_Id")
        dummy.Columns.Add("firstName")
        dummy.Columns.Add("middleName")
        dummy.Columns.Add("lastName")
        dummy.Columns.Add("passportNumber")
        dummy.Columns.Add("passportExpirationDate")
        dummy.Columns.Add("phoneNumber")
        dummy.Columns.Add("address")
        dummy.Columns.Add("landlordName")
        dummy.Columns.Add("landlordPhoneNumber")
        dummy.Rows.Add()
        gvMELPeople.DataSource = dummy
        gvMELPeople.DataBind()
    End Sub

    <WebMethod()>
    Public Shared Function GetMELPeople() As String
        Dim query As String = "SELECT MEL_Id, firstName,middleName,lastName,passportNumber, " _
            & "passportExpirationDate,phoneNumber,address, landlordName, landlordPhoneNumber FROM MELPeople order by lastName, firstName"
        'MsgBox(query)
        Dim cmd As New SqlCommand(query)
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using sda As New SqlDataAdapter()
                cmd.Connection = con
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.Fill(ds)
                    Return ds.GetXml()
                End Using
            End Using
        End Using
    End Function

    <WebMethod()>
    Public Shared Function InsertMELRecord(firstname As String, middlename As String, lastname As String,
         passportnumber As String, passportexpiration As String, phonenumber As String, address As String,
         landlordname As String, landlordphone As string) As Integer
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        'MsgBox("inserting")
        Using con As New SqlConnection(constr)
            'TODO add new columns
            'Using cmd As New SqlCommand("INSERT INTO MELPeople VALUES(@Name, @Country) SELECT SCOPE_IDENTITY()")
            '    cmd.Parameters.AddWithValue("@Name", firstname)
            '    cmd.Parameters.AddWithValue("@Country", middlename)
            Using cmd As New SqlCommand(
               "INSERT INTO MELPeople VALUES(@firstName, @middleName, @lastName, @passportNumber, " &
               "@passportExpirationDate,@phoneNumber,@address,@landlordName,@landlordPhoneNumber) SELECT SCOPE_IDENTITY()")
                cmd.Parameters.AddWithValue("@firstName", firstname)
                cmd.Parameters.AddWithValue("@middleName", middlename)
                cmd.Parameters.AddWithValue("@lastName", lastname)
                cmd.Parameters.AddWithValue("@passportNumber", passportnumber)
                cmd.Parameters.AddWithValue("@passportExpirationDate", passportexpiration)
                cmd.Parameters.AddWithValue("@phoneNumber", phonenumber)
                cmd.Parameters.AddWithValue("@address", address)
                cmd.Parameters.AddWithValue("@landlordName", landlordname)
                cmd.Parameters.AddWithValue("@landlordPhoneNumber", landlordphone)
                cmd.Connection = con
                con.Open()
                Dim MEL_Id As Integer = Convert.ToInt32(cmd.ExecuteScalar())
                con.Close()
                StartMSWord(firstname, middlename, lastname, passportnumber, passportexpiration, phonenumber, address, landlordname, landlordphone)
                Return MEL_Id
            End Using
        End Using

    End Function

    <WebMethod()>
    Public Shared Sub UpdateMELRecord(MEL_Id As Integer, firstname As String, middlename As String, lastname As String,
         passportnumber As String, passportexpiration As String, phonenumber As String, address As String,
         landlordname As String, landlordphone As String)
        'TODO make sure path the .mdf file is correct
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            'TODO add new columns
            Using cmd As New SqlCommand("UPDATE MELPeople SET firstName = @firstName, middleName = @middleName, " &
              " lastName = @lastName, " &
              " passportNumber = @passportNumber, " &
              " passportExpirationDate = @passportExpirationDate, " &
              " phoneNumber = @phoneNumber, " &
              " address = @address, " &
              " landlordName = @landlordName, " &
              " landlordPhoneNumber = @landlordPhoneNumber" &
              " WHERE MEL_Id = @MEL_Id")
                cmd.Parameters.AddWithValue("@MEL_Id", MEL_Id)
                cmd.Parameters.AddWithValue("@firstName", firstname)
                cmd.Parameters.AddWithValue("@middleName", middlename)
                cmd.Parameters.AddWithValue("@lastName", lastname)
                cmd.Parameters.AddWithValue("@passportNumber", passportnumber)
                cmd.Parameters.AddWithValue("@passportExpirationDate", passportexpiration)
                cmd.Parameters.AddWithValue("@phoneNumber", phonenumber)
                cmd.Parameters.AddWithValue("@address", address)
                cmd.Parameters.AddWithValue("@landlordName", landlordname)
                cmd.Parameters.AddWithValue("@landlordPhoneNumber", landlordphone)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
            StartMSWord(firstname, middlename, lastname, passportnumber, passportexpiration, phonenumber, address, landlordname, landlordphone)
        End Using
    End Sub

    <WebMethod()>
    Public Shared Sub DeleteMELRecord(MEL_Id As Integer)
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("DELETE FROM MELPeople WHERE MEL_Id = @MEL_Id")
                cmd.Parameters.AddWithValue("@MEL_Id", MEL_Id)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
    End Sub

    Public Shared Sub StartMSWord(firstname As String, middlename As String, lastname As String,
         passportnumber As String, passportexpiration As String, phonenumber As String, address As String,
         landlordname As String, landlordphone As String)
        'lblMisc.Text = txtFirstName.Text
        Dim word_app As Word._Application = New Word.ApplicationClass()
        ' Make Word visible (optional).
        word_app.Visible = True
        ' Create the Word document.
        Dim word_doc As Word._Document =
        word_app.Documents.Add()
        ' Create a header paragraph.
        Dim para As Word.Paragraph = word_doc.Paragraphs.Add()
        'para.Range.Text = "Chrysanthemum Curve"
        'para.Range.Style = "Heading 1"
        'para.Range.InsertParagraphAfter()
        'Add more text.
        'para.Range.Text = "To make a chrysanthemum curve, use" &
        '"the following " &
        '"parametric equations as t goes from 0 to 21 * ? to" &
        '    "generate " &
        '"points and then connect them."
        'para.Range.InsertParagraphAfter()
        'Save the current font And start using Courier New.
        Dim old_font As String = para.Range.Font.Name
        'para.Range.Font.Name = "Courier New"
        ' Add the equations.
        para.Range.Text =
        "Dear " & firstname & " " & lastname & "," & vbCrLf &
        "passport number as listed: " & passportnumber & vbCrLf &
        "And expires: " & passportexpiration & vbCrLf &
        "address: " & address & vbCrLf &
        "phone number: " & phonenumber & vbCrLf &
        "landlord: " & landlordname & vbCrLf &
        "landlord phone: " & landlordphone & vbCrLf &
       vbCrLf & vbCrLf & vbCrLf &
        "This is the last line" & vbCrLf
        ' Start a new paragraph and then switch back to the
        ' original font.
        para.Range.InsertParagraphAfter()
        para.Range.Font.Name = old_font
        ' Save the document.
        'Dim filename As Object = Path.GetFullPath(txtLastName.Text & "test.doc")
        'word_doc.SaveAs(FileName:=filename)
        '' Close.
        'Dim save_changes As Object = False
        'word_doc.Close(save_changes)
        'word_app.Quit(save_changes)

    End Sub
    Protected Sub gvMELPeople_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvMELPeople.SelectedIndexChanged

    End Sub
End Class
