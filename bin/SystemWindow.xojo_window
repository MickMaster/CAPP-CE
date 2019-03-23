#tag Window
Begin Window SystemWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   632
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
   Title           =   "System"
   Visible         =   True
   Width           =   858
   Begin SystemToolbar SystemSystemToolbar
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Visible         =   True
   End
   Begin Label ShowParameter
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   592
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Courier"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   818
      Begin Canvas Canvas1
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   1287856127
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   59
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ShowParameter"
         Left            =   780
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   553
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   58
      End
   End
   Begin Timer SystemTimer
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
		  
		  rs = Nil 
		  db = Nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  Dim Kee As Integer
		  
		  Kee = Asc(key)
		  Select Case Kee
		    
		  Case 68, 100    ' D d - Database
		    
		    RunDatabaseDesigner
		    
		  Case 67, 99     ' C c - Connection
		    
		    Dim dw As New DatabaseWindow
		    dw.show
		    
		  Case 83, 115    ' S s - Startmodule 
		    
		    g_SetStartmodule = True
		    Dim pw As New ParameterWindow
		    g_Parameter = ""
		    g_Module_id = 0
		    pw.show
		    
		  Case 84, 116    ' T t - Template
		    
		    g_OpenTemplate
		    
		  Case 86, 118    ' V v - Velocity/Telosys
		    
		    RunVelocity
		    
		  Case 80, 112    ' P p - Parameter
		    
		    Dim pw As New ParameterWindow
		    g_Parameter = ""
		    g_SetStartmodule = False
		    g_Module_id = 0
		    pw.show
		    
		  Case 13         ' Enter - Close with save
		    
		    Me.close
		    
		  Case 27 
		    
		    Me.Close      ' Esc - Close without saving
		    
		  End Select
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  If Asc(key)=27 Then Me.Close
		  If Asc(key)=13 Then Me.Close
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  '
		  Dim f As FolderItem
		  f = GetFolderItem("CAPP.sqlite")
		  db = New SQLiteDatabase
		  db.DatabaseFile = f
		  If Not db.Connect Then
		    MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		  End If
		  
		  g_GetParameters
		  
		  RefreshParameters
		  
		  Exception err As OLEException
		    MsgBox err.Message
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub RefreshParameters()
		  ShowParameter.Text = ""
		  
		  rs = db.SQLSelect("SELECT * FROM Parameters WHERE module_id = 0")
		  While Not rs.EOF
		    Dim ParName As String
		    ParName = Left(rs.IdxField(4).StringValue + "                                ", 30)
		    ShowParameter.Text = ShowParameter.Text + ParName + ": " + rs.IdxField(5).StringValue + Chr(13)
		    rs.MoveNext
		  Wend
		  g_RefreshParameters = False
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunDatabaseDesigner()
		  
		  Dim res As String
		  Dim Executer As Shell
		  Dim m_ShellCommand As String
		  
		  Executer = New Shell
		  
		  m_ShellCommand = "open " + Trim(g_DatabaseEditor) ' with -n if new window is required
		  System.DebugLog m_ShellCommand
		  Executer.Execute (m_ShellCommand)
		  
		  g_Results = Executer.Result.ToText
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunVelocity()
		  
		  Dim res As String
		  Dim Executer As Shell
		  Dim m_ShellCommand As String
		  
		  Executer = New Shell
		  
		  m_ShellCommand = "open -a ""Terminal"" " + g_VelocityPath + "/tt"
		  Executer.Execute (m_ShellCommand)
		  If Executer.ErrorCode <> 0 Then
		    MsgBox("Error code: " + Str(Executer.ErrorCode) + EndOfLine + "Output: " + Executer.Result)
		  End If
		  System.DebugLog Executer.Result.ToText
		  
		  g_Results = Executer.Result.ToText
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		SQLstring As String
	#tag EndProperty


#tag EndWindowCode

#tag Events SystemSystemToolbar
	#tag Event
		Sub Action(item As ToolItem)
		  
		  Select Case Item.Name
		    
		  Case "DatabaseButton"
		    
		    RunDatabaseDesigner
		    
		  Case "ConnectionButton"
		    
		    Dim dw As New DatabaseWindow
		    dw.show
		    
		  Case "StartmoduleButton"
		    
		    g_SetStartmodule = True
		    Dim pw As New ParameterWindow
		    g_Parameter = ""
		    g_Module_id = 0
		    pw.show
		    
		  Case "VelocityButton"
		    
		    RunVelocity
		    
		  Case "TemplatesButton"
		    
		    g_OpenTemplate
		    
		  Case "ParametersButton"
		    
		    Dim pw As New ParameterWindow
		    g_Parameter = ""
		    g_Module_id = 0
		    g_SetStartmodule = False
		    pw.show
		    
		  End Select
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SystemTimer
	#tag Event
		Sub Action()
		  If g_RefreshParameters Then RefreshParameters
		  
		  
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
		Name="SQLstring"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
