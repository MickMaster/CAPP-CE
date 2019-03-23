#tag Window
Begin Window ExecuteWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   101
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Execute Velocity"
   Visible         =   True
   Width           =   496
   Begin TextArea ShowResults
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cE7E7E700
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   21
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   90
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   False
      Styled          =   False
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   4.0
      TextUnit        =   0
      Top             =   60
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   False
      Width           =   29
   End
   Begin Canvas Canvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   1679466495
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   59
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   58
   End
   Begin ProgressBar ModuleProgress
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   90
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      Top             =   20
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   386
   End
   Begin PushButton BreakButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Break"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   418
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   60
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin Task ExecuteTask
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
   End
   Begin Timer Timer1
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  g_Running = False
		  '
		  If g_Error = 0 Then g_Error = 999999 ' no error, run destination
		  '
		  ExecuteTask.Kill
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  Dim Kee As Integer
		  
		  Kee = Asc(key)
		  Select Case Kee
		    
		  Case 13
		    
		    Me.close
		    
		  Case 27 
		    
		    Me.Close
		    
		  End Select
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  '
		  If Asc(key)=27 Then Me.Close
		  If Asc(key)=13 Then Me.Close
		  
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Executer = New Shell
		  Executer.Mode = 0
		  
		  ShowResults.Text = ""
		  g_Running = True
		  g_Error = 0
		  l_close = False
		  
		  ExecuteTask.Run
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub InitTeloSys()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  ' Run tt with input redirection
		  '
		  Dim res As String
		  Dim m_ShellCommand As String
		  m_ShellCommand = "cd " + Trim(g_VelocityPath) + "; " + Trim(g_VelocityPath) + "/tt <" + Trim(g_InputPath) + "/input_pipe"
		  System.DebugLog "Shell Command: " + m_ShellCommand
		  Executer.Execute (m_ShellCommand)
		  '
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteDatabaseConfig()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write Database Config file into Control Directory
		  '
		  Dim t As TextOutputStream
		  Dim f As FolderItem
		  Dim ret As Integer
		  Dim db As SQLiteDatabase
		  Dim rs As RecordSet
		  Dim OutString As String
		  Dim m_path As String
		  
		  m_path = g_VelocityPath + "/TelosysTools/databases.dbcfg"
		  f = GetFolderItem(m_path, 1)
		  System.debuglog "Writing " + m_path
		  If f <> Nil Then
		    t = TextOutputStream.Create(f)
		    '
		    ' first comment block for understandable content:
		    '
		    t.WriteLine("<!-- ============================================ -->")
		    t.WriteLine("<!--        TELOSYS DATABASES CONFIGURATION       -->")
		    t.WriteLine("<!-- ============================================ -->")
		    t.WriteLine("<!--")
		    t.WriteLine("""databases"" tag Attributes :")
		    t.WriteLine(". maxId       : maximum database id (0 To 100, default = 10)")
		    t.WriteLine(". defaultId   : default database To use when no ID Is specified ( 0 To maxId ), default : 0")
		    t.WriteLine("""db"" tag Attributes :")
		    t.WriteLine(". id       : the database id ( from 0 To maxId )")
		    t.WriteLine(". name     : the symbolic name ( anything )")
		    t.WriteLine(". driver   : the JDBC driver Class name")
		    t.WriteLine(". url      : the JDBC URL For connection")
		    t.WriteLine(". typeName : the database type name ( eg ""DERBY"", ""H2"", ""MYSQL"", ""ORACLE"", etc )") 
		    t.WriteLine(". dialect  : the JPA dialect (usefull only For JPA) ")
		    t.WriteLine(". isolationLevel : JDBC values ( see Java Constants In ""java.sql.Connection"" )")
		    t.WriteLine(". poolSize       : the initial size Of the pool For this database ")
		    t.WriteLine("""metadata"" tag Attributes :")
		    t.WriteLine(". catalog            : the catalog where To search the metadata ( ""!"" means ""null"" ) ")
		    t.WriteLine(". schema             : the schema  where To search the metadata ( ""!"" means ""null"" ) ")
		    t.WriteLine(". table-name-pattern : the pattern used As table name filter ( ex : ""%"", ""A%"", ... ) ")
		    t.WriteLine(". table-types        : the types To retrieve, separated by blanks ( ex : ""TABLE"", ""TABLE VIEW"", ... ) ")
		    t.WriteLine(". table-name-exclude : the pattern used To exclude tables")
		    t.WriteLine(". table-name-include : the pattern used To include tables")
		    t.WriteLine("-->")
		    '
		    t.WriteLine("<databases defaultId=""1"" maxId=""10"">")
		    t.WriteLine("")
		    t.WriteLine("<!-- ============================================ -->")
		    t.WriteLine("<!--                    MYSQL                     -->")
		    t.WriteLine("<!-- ============================================ -->")
		    t.WriteLine("<!-- The JDBC Driver Is In ""mysql-connector-java-x.x.x-Bin.jar"" -->")
		    t.WriteLine("")
		    t.WriteLine("<db id = ""1"" ")
		    t.WriteLine("name     = """ + g_Database + """ ")
		    t.WriteLine("driver   = """ + g_Driver + """ ")
		    t.WriteLine("url      = ""jdbc:mysql://" + g_URL + "/" + g_Database + """ ")
		    t.WriteLine("typeName = """ + g_Dbms + """")
		    t.WriteLine("dialect  = ""org.hibernate.dialect.MySQLDialect""")
		    t.WriteLine("isolationLevel = ""TRANSACTION_REPEATABLE_READ""")
		    t.WriteLine("poolSize       = ""3"" >")
		    t.WriteLine("<property name=""user""      value=""" + g_User + """ />")
		    t.WriteLine("<property name=""password""  value=""" + g_Password + """ />")
		    t.WriteLine("<metadata catalog=""""  schema=""""  ")
		    t.WriteLine("table-name-pattern=""%"" table-types=""TABLE  VIEW  "" ")
		    t.WriteLine("table-name-exclude=""""  table-name-include=""""  />")
		    t.WriteLine("</db>")
		    t.WriteLine("</databases>")
		    '
		    t.WriteLine("")
		    t.Close
		    t.Flush
		    '
		  End If
		  '
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteEmbedVm()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write "embeds.vm" into Template/Language/
		  '
		  Dim t As TextOutputStream
		  Dim f As FolderItem
		  Dim ret As Integer
		  Dim db As SQLiteDatabase
		  Dim rs As RecordSet
		  Dim OutString As String
		  Dim OutModulesString As String
		  Dim OutModulesNameString As String
		  Dim OutModulesInputString As String
		  Dim OutModulesOnceString As String
		  Dim OutParameterString As String
		  Dim m_once As String
		  Dim m_path As String
		  Dim m_output_filename As String
		  Dim m_starposition As Integer
		  '
		  m_path = g_ControlPath + "/" + g_Language + "/embeds.vm"
		  f = GetFolderItem(m_path, 1)
		  System.debuglog "Writing " + m_path
		  If f <> Nil Then
		    t = TextOutputStream.Create(f)
		    '
		    ' first comment block for understandable content:
		    '
		    If g_Template = "doc.vm" Then
		      t.WriteLine("## Embeds Add on")
		    Else
		      t.WriteLine("## Embeds Macro file")
		      t.WriteLine("#macro( embed $place )")
		    End If
		    '
		    f = GetFolderItem("CAPP.sqlite")
		    db = New SQLiteDatabase
		    db.DatabaseFile = f
		    If Not db.Connect Then
		      MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		    End If
		    '
		    If g_Template = "doc.vm" Then
		      
		      rs = db.SQLSelect( _
		      "SELECT * FROM Embeds WHERE system_id = " + _
		      Trim(Str(g_system_id)) + _
		      " ORDER BY name ASC")
		      
		    Else
		      
		      rs = db.SQLSelect( _
		      "SELECT * FROM Embeds WHERE system_id = " + _
		      Trim(Str(g_system_id)) + _
		      " AND module_id = " + _
		      Trim(Str(g_module_id)) + _
		      " ORDER BY name ASC")
		      
		    End If' 
		    If db.Error Then
		      ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		      Return
		    End If
		    ' 
		    If rs <> Nil Then
		      While Not rs.EOF
		        '
		        ' here comes one block per embed
		        '
		        If g_Template = "doc.vm" Then
		          If Len(Trim(rs.Field("embed").StringValue)) > 0 Then
		            t.WriteLine("#if ( $moduleid == """) + Trim(rs.Field("module_id").StringValue) + (""" )")
		            t.WriteLine
		            t.WriteLine("#[[#####]]#Embed " + Trim(rs.Field("name").StringValue) )
		            t.WriteLine
		            OutString = rs.Field("embed").StringValue
		            OutString = ReplaceAll(OutString, Chr(255), "'" )
		            t.WriteLine(OutString)
		            t.WriteLine
		            t.WriteLine("#end")
		          End If
		          rs.MoveNext
		        Else
		          t.WriteLine("#if ( $place == """) + Trim(rs.Field("name").StringValue) + (""" )")
		          t.WriteLine("'")
		          t.WriteLine("' CAPP embed " + Trim(rs.Field("name").StringValue) )
		          t.WriteLine("'")
		          OutString = rs.Field("embed").StringValue
		          OutString = ReplaceAll(OutString, Chr(255), "'" )
		          t.WriteLine(OutString)
		          t.WriteLine("'")
		          t.Writeline("' -+- ")
		          t.WriteLine("'")
		          t.WriteLine("#end")
		          rs.MoveNext
		        End If
		      Wend
		      rs.Close
		    End If
		    If g_Template <> "doc.vm" Then
		      t.WriteLine("#end")
		    End If
		    '
		  End If
		  '
		  Exception err As OLEException
		    MsgBox err.Message
		     
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteInputPipe()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write "input_pipe" into Input Directory
		  '
		  Dim f As FolderItem
		  Dim t As TextOutputStream
		  Dim ret As Integer
		  Dim m_path As String
		  '
		  m_path = g_InputPath + "/input_pipe"
		  f = GetFolderItem(m_path, 1)
		  System.debuglog "Writing " + m_path
		  If f <> Nil Then
		    t = TextOutputStream.Create(f)
		    '
		    ' first comment block for understandable content:
		    '
		    t.WriteLine("h .")              ' sets the home directory
		    t.WriteLine("init")             ' init directory tree if not existing
		    t.WriteLine("ndbm")             ' (re)creates the (New) Data Base Model xml file
		    t.WriteLine("y")                ' confirmation
		    t.WriteLine("m " + g_Database ) ' sets the current database
		    t.WriteLine("b " + g_Language ) ' sets the current bundle = named as language
		    t.WriteLine("env")              ' listing the current status for checks
		    '
		    t.WriteLine("q")    ' quits telosys
		    t.Close
		    t.Flush
		  Else
		    ret = MsgBox("Error writing Telosys Input Pipe", 48)
		  End If
		  '
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteModuleInputPipe()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write "module_pipe" into Input Directory
		  '
		  Dim f As FolderItem
		  Dim t As TextOutputStream
		  Dim ret As Integer
		  Dim m_path As String
		  '
		  m_path = g_InputPath + "/module_pipe"
		  System.debuglog "Writing " + m_path
		  f = GetFolderItem(m_path, 1)
		  '
		  If f <> Nil Then
		    t = TextOutputStream.Create(f)
		    '
		    t.WriteLine("h .")              ' sets the home directory
		    t.WriteLine("gen " + _
		    l_rs.IdxField(5).StringValue + " " + _
		    l_rs.IdxField(12).StringValue + " -r " )
		    t.WriteLine("y")                ' accept
		    t.WriteLine("q")                ' quits telosys
		    t.Close
		    t.Flush
		    
		  Else
		    ret = MsgBox("Error writing Telosys Input Pipe", 48)
		  End If
		  '
		  Exception err As OLEException
		    MsgBox err.Message
		     
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteOneTemplateConfig()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write "templates.cfg" into control directory,
		  '  the current record is in l_rs ... (!)
		  '
		  Dim t As TextOutputStream
		  Dim f As FolderItem
		  Dim ret As Integer
		  Dim OutString As String
		  Dim m_once As String
		  Dim m_path As String
		  Dim m_output_filename As String
		  Dim m_starposition As Integer
		  '
		  m_path = g_ControlPath + "/" + g_Language + "/templates.cfg"
		  f = GetFolderItem(m_path, 1)
		  System.debuglog "Template-Config: " + m_path
		  If f <> Nil Then
		    t = TextOutputStream.Create(f)
		    '
		    ' Sample for single execution, multiple execution per entity and copying resources 
		    '
		    ' Main           ; main.md    ; ../out ; main.vm     ; 1
		    ' Name-of-Step   ; fileone.md ; ../out ; entities.vm ; *
		    ' Resource-Files ;            ; ../out ; /           ; R
		    '
		    ' CAPP Generator      ; ${BEANNAME}.html  ; ../out  ; edit.vm    ; *
		    '
		    t.WriteLine("#")
		    t.WriteLine("# CAPP generated templates.cfg" )
		    t.WriteLine("#")
		    Select Case l_rs.IdxField(15).StringValue
		    Case "Once"
		      m_once = "1"
		    Case "Resource"
		      m_once = "R"
		    Case "Multiple"
		      m_once = "*"
		    Else
		      m_once = "*"
		    End Select
		    '
		    ' Check for multiple output file naming
		    '
		    m_output_filename = l_rs.IdxField(6).StringValue 
		    m_starposition = InStr(l_rs.IdxField(6).StringValue , "*") 
		    If m_starposition > 0 Then
		      m_output_filename = _
		      Left(m_output_filename , m_starposition -1) + _
		      "${BEANNAME_LC}" + _
		      Mid(m_output_filename, m_starposition + 1, 999)
		    End If
		    '
		    ' Check for systemname in output file (#)
		    '
		    m_starposition = InStr(m_output_filename , "#") 
		    If m_starposition > 0 Then
		      m_output_filename = _
		      Left(m_output_filename , m_starposition -1) + _
		      Trim(g_StartModule) + _
		      Mid(m_output_filename, m_starposition + 1, 999)
		    End If
		    '
		    ' here comes the line per module ... :
		    '
		    OutString = _
		    l_rs.IdxField(3).StringValue + " ; " + _
		    m_output_filename + " ; " + _
		    g_OutputPath + " ; " + _
		    l_rs.IdxField(12).StringValue + " ; " + _
		    m_once
		    '
		    t.WriteLine(OutString)
		    System.DebugLog "Template-Config: " + Outstring
		    t.WriteLine("")
		    t.Close
		    t.Flush
		    '
		  Else
		    MsgBox ("Output-File NIL !")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteParameterVm()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write "parameter.vm" into Template/Language/
		  '
		  Dim t As TextOutputStream
		  Dim f As FolderItem
		  Dim ret As Integer
		  Dim db As SQLiteDatabase
		  Dim rs As RecordSet
		  Dim OutString As String
		  Dim OutModulesIdString As String
		  Dim OutModulesString As String
		  Dim OutModulesNameString As String
		  Dim OutModulesInputString As String
		  Dim OutModulesOnceString As String
		  Dim OutModulesOutputString As String
		  Dim OutModulesTpl1String As String
		  Dim OutParameterString As String
		  Dim m_once As String
		  Dim m_path As String
		  Dim m_output_filename As String
		  Dim m_starposition As Integer
		  '
		  m_path = g_ControlPath + "/" + g_Language + "/parameter.vm"
		  f = GetFolderItem(m_path, 1)
		  System.debuglog "Writing " + m_path
		  If f <> Nil Then
		    t = TextOutputStream.Create(f)
		    '
		    ' first comment block for understandable content:
		    '
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("## CAPP parameter file, included in each other template")
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("#set ( $testparameter = ""Parameters are online!"") ")
		    '
		    t.WriteLine("#if ( $databases.hasDatabase($model.databaseId) )")
		    t.WriteLine("#set ( $database = $databases.getDatabase($model.databaseId) )")
		    t.WriteLine("#set ( $dbname = $database.name)")
		    t.WriteLine("#else")
		    t.WriteLine("#set ( $dbname = """" )")
		    t.WriteLine("#end")
		    '
		    f = GetFolderItem("CAPP.sqlite")
		    db = New SQLiteDatabase
		    db.DatabaseFile = f
		    If Not db.Connect Then
		      MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		    End If
		    '
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("## Module definition for ALL modules")
		    t.WriteLine("##---------------------------------------------------------")
		    '
		    ' System.DebugLog "SELECT * FROM Parameters WHERE system_id = " + _
		    ' Trim(Str(g_system_id)) + _
		    ' " ORDER BY name ASC"
		    rs = db.SQLSelect( _
		    "SELECT * FROM Parameters WHERE system_id = " + _
		    Trim(Str(g_system_id)) + _
		    " ORDER BY name ASC")
		    ' 
		    If db.Error Then
		      ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		      Return
		    End If
		    ' 
		    If rs <> Nil Then
		      While Not rs.EOF
		        '
		        ' here comes one line per parameter
		        '
		        OutString = _
		        "#set( $" + _
		        rs.IdxField(4).StringValue + _
		        " = """" )" 
		        t.WriteLine(OutString)
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		    '
		    ' Parameter definitions done now
		    '
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("## Module-Structure related parameters")
		    t.WriteLine("##---------------------------------------------------------")
		    ' 
		    rs = db.SQLSelect("SELECT * FROM Modules WHERE system_id = " + Trim(Str(g_system_id)) + " ORDER BY structure ASC")
		    ' 
		    If db.Error Then
		      ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		      Return
		    End If
		    ' 
		    OutModulesIdString = "#set( $moduleids = [ "
		    OutModulesString = "#set( $modules = [ "
		    OutModulesNameString = "#set( $modulenames = [ "
		    OutModulesInputString = "#set( $moduleinputs = [ "
		    OutModulesOnceString = "#set( $moduleonces = [ "
		    OutModulesOutputString = "#set( $moduleoutputs = [ "
		    OutModulesTpl1String = "#set( $moduletpl1s = [ "
		    
		    If rs <> Nil Then
		      While Not rs.EOF
		        '
		        ' here comes one line including the tuple for all modules ... :
		        '
		        OutModulesIdString = OutModulesIdString + """" + rs.Field("id").StringValue + """, "
		        OutModulesString = OutModulesString + """" + rs.Field("structure").StringValue + """, "
		        OutModulesNameString = OutModulesNameString + """" + rs.Field("name").StringValue + """, "
		        OutModulesInputString = OutModulesInputString + """" + rs.Field("input").StringValue + """, "
		        OutModulesOnceString = OutModulesOnceString + """" + rs.Field("once").StringValue + """, "
		        OutModulesOutputString = OutModulesOutputString + """" + rs.Field("output").StringValue + """, "
		        OutModulesTpl1String = OutModulesTpl1String + """" + rs.Field("tpl_1").StringValue + """, "
		        '
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		    ' 
		    ' put the end behind ... 
		    '
		    OutModulesIdString = OutModulesIdString + """"" ] ) "
		    OutModulesString = OutModulesString + """"" ] ) "
		    OutModulesNameString = OutModulesNameString + """"" ] ) "
		    OutModulesInputString = OutModulesInputString + """"" ] ) "
		    OutModulesOnceString = OutModulesOnceString + """"" ] ) "
		    OutModulesOutputString = OutModulesOutputString + """"" ] ) "
		    OutModulesTpl1String = OutModulesTpl1String + """"" ] ) "
		    '
		    t.WriteLine(OutModulesIdString)
		    t.WriteLine(OutModulesString)
		    t.WriteLine(OutModulesNameString)
		    t.WriteLine(OutModulesInputString)
		    t.WriteLine(OutModulesOnceString)
		    t.WriteLine(OutModulesOutputString)
		    t.WriteLine(OutModulesTpl1String)
		    '
		    ' Module parameter block is ready now, it follows the system parameters block
		    '
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("## System related names and parameters")
		    t.WriteLine("##---------------------------------------------------------")
		    '
		    rs = db.SQLSelect( _
		    "SELECT * FROM Parameters WHERE system_id = " + _
		    Trim(Str(g_system_id)) + _
		    " and module_id = 0 " + _
		    " ORDER BY name ASC")
		    ' 
		    If db.Error Then
		      ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		      Return
		    End If
		    ' 
		    If rs <> Nil Then
		      While Not rs.EOF
		        ' 
		        ' Check for Systemname = StartModule
		        '
		        If rs.IdxField(4).StringValue = "StartModule" Then
		          g_StartModule = rs.IdxField(5).StringValue
		          OutString = _
		          "#set( $" + _
		          "SystemName" + _
		          " = """ + _
		          rs.IdxField(5).StringValue + _
		          """ )" 
		          t.WriteLine(OutString)
		        End If
		        '
		        ' here comes one line per parameter
		        '
		        OutString = _
		        "#set( $" + _
		        rs.IdxField(4).StringValue + _
		        " = """ + _
		        rs.IdxField(5).StringValue + _
		        """ )" 
		        t.WriteLine(OutString)
		        ' System.DebugLog OutString
		        '
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		    '
		    ' System parameter block ready now
		    '
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("## Module related names and parameters")
		    t.WriteLine("##---------------------------------------------------------")
		    '
		    rs = db.SQLSelect( _
		    "SELECT * FROM Parameters WHERE system_id = " + _
		    Trim(Str(g_system_id)) + _
		    " and module_id = " + _
		    Trim(Str(g_Module_id)) + _
		    " ORDER BY name ASC")
		    ' 
		    If db.Error Then
		      ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		      Return
		    End If
		    ' 
		    If rs <> Nil Then
		      While Not rs.EOF
		        '
		        ' here comes one line per parameter
		        '
		        OutString = _
		        "#set( $" + _
		        rs.IdxField(4).StringValue + _
		        " = """ + _
		        rs.IdxField(5).StringValue + _
		        """ )" 
		        t.WriteLine(OutString)
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		    '
		    t.WriteLine("##---------------------------------------------------------")
		    t.WriteLine("## CAPP End of Parameter Definition File")
		    t.Write("##---------------------------------------------------------")
		    '
		    ' careful: NO OBSOLETE CR in templates (!)
		    '
		    t.Close
		  Else
		    ret = MsgBox("No modules in CAPP database found!", 48)
		  End If
		  '
		  Exception err As OLEException
		    MsgBox err.Message
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Executer As Shell
	#tag EndProperty

	#tag Property, Flags = &h0
		l_close As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		l_ProgressPercent As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		l_ResultString As String
	#tag EndProperty

	#tag Property, Flags = &h0
		l_rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		l_start As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events ShowResults
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BreakButton
	#tag Event
		Sub Action()
		  
		  Self.Close
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExecuteTask
	#tag Event
		Sub Run()
		  ' Copyright 2019 Dettmer Informatik GmbH & Co. KG
		  ' 
		  ' Licensed under the Apache License, Version 2.0 (the "License");
		  ' you may Not use this file except In compliance With the License.
		  ' You may obtain a copy Of the License at
		  ' 
		  ' http://www.apache.org/licenses/LICENSE-2.0
		  ' 
		  ' Unless required by applicable law Or agreed To In writing, software
		  ' distributed under the License Is distributed on an "AS IS" BASIS,
		  ' WITHOUT WARRANTIES Or CONDITIONS Of ANY KIND, either express Or implied.
		  ' See the License For the specific language governing permissions And
		  ' limitations under the License.
		  '
		  '
		  '  Write into shell command
		  '
		  Dim t As TextOutputStream
		  Dim f As FolderItem
		  Dim ret As Integer
		  Dim ModuleCount As Integer
		  Dim ModuleCurrent As Integer
		  Dim ModulePercent As Double
		  Dim db As SQLiteDatabase
		  Dim OutString As String
		  Dim m_once As String
		  Dim m_path As String
		  Dim m_error As Integer
		  Dim m_ShellCommand As String
		  '
		  l_ProgressPercent = 1
		  '
		  l_ResultString = "Writing Database Configuration .... "
		  Me.UpdateUI
		  WriteDatabaseConfig
		  '
		  l_ResultString = "Writing Input Pipe .... "
		  Me.UpdateUI
		  WriteInputPipe
		  '
		  l_ResultString = "Initialize TeloSys .... "
		  Me.UpdateUI
		  InitTeloSys
		  '
		  l_ResultString = "Generating Output Files .... "
		  Me.UpdateUI
		  '
		  f = GetFolderItem("CAPP.sqlite")
		  db = New SQLiteDatabase
		  db.DatabaseFile = f
		  If Not db.Connect Then
		    MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		  End If
		  '
		  l_rs = db.SQLSelect("SELECT * FROM Modules WHERE system_id = " + Trim(Str(g_system_id)) + " ORDER BY structure ASC")
		  ' 
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  '
		  ModuleCount = l_rs.RecordCount
		  System.DebugLog "Modulecount: " + Str(l_rs.RecordCount)
		  ModuleCurrent = 0
		  '
		  If l_rs <> Nil Then
		    While Not l_rs.EOF
		      '
		      ModuleCurrent = ModuleCurrent + 1
		      '
		      Select Case l_rs.IdxField(15).StringValue
		      Case "Ignore"
		        l_rs.MoveNext
		        Continue
		      End Select
		      '
		      ' here comes one tt command per module ... :
		      ' but first write a new templates.cfg PER MODULE with current rs 
		      '
		      g_Module_id = l_rs.Field("id").Value
		      g_Template = l_rs.Field("tpl_1").StringValue
		      WriteEmbedVm             ' for embeds
		      WriteParameterVm         ' for module
		      WriteOneTemplateConfig   ' from module
		      WriteModuleInputPipe     ' depending on module content
		      '
		      ' Just DO IT
		      '
		      m_ShellCommand = "cd " + Trim(g_VelocityPath) + "; " + Trim(g_VelocityPath) + "/tt <" + Trim(g_InputPath) + "/module_pipe"
		      System.DebugLog "Shell Command: " + m_ShellCommand
		      Executer.Execute (m_ShellCommand)
		      '
		      ' Progress Bar
		      '
		      ModulePercent = (ModuleCurrent * 100 ) / ModuleCount
		      l_ProgressPercent = ModulePercent 
		      ' System.DebugLog "Module Number " + Str(ModuleCurrent) + " = " + Str(ModulePercent) + "%"
		      '
		      ' Check for errors
		      '
		      System.DebugLog "**** ERRORCODE = " + Str(Executer.ErrorCode) + "****"
		      '
		      ' Display results 
		      '
		      l_ResultString = Executer.ReadAll
		      l_ResultString = ReplaceAll(l_ResultString, """","'")
		      '
		      ' Store results into Database for later reference
		      '
		      db.SQLExecute("UPDATE Modules SET result = """ + _
		      Trim(l_ResultString) + """ WHERE id = " + _
		      l_rs.IdxField(1).StringValue)
		      '
		      If InStr(l_ResultString, "[ERROR]" ) > 0 Then
		        m_error = 1
		        g_Error = g_Error + 1
		      Else
		        m_error = 0
		      End If
		      '
		      db.SQLExecute("UPDATE Modules SET error = " + _
		      Str(m_error) + " WHERE id = " + _
		      l_rs.IdxField(1).StringValue)
		      '
		      System.DebugLog "Percent: " + Str(l_ProgressPercent)
		      Me.UpdateUI
		      App.DoEvents(20) ' I know ... it is sh**. But at least it works.
		      l_rs.MoveNext
		      '
		    Wend
		    l_rs.Close
		    l_ProgressPercent = 100
		    Me.UpdateUI
		    '
		  End If
		  '
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		    
		    
		    
		End Sub
	#tag EndEvent
	#tag Event
		Sub UpdateUI(args as Dictionary)
		  '
		  ModuleProgress.Value = l_ProgressPercent
		  ShowResults.Text = l_ResultString
		  ShowResults.ScrollPosition = ShowResults.LineNumAtCharPos(ShowResults.Text.Len)
		  '
		  ModuleProgress.Refresh
		  ShowResults.Refresh
		  BreakButton.Refresh
		  Self.Refresh
		  
		  If l_ProgressPercent = 100 Then 
		    l_close = True
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  If l_close Then Self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="l_start"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="l_ProgressPercent"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="l_ResultString"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="l_close"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
