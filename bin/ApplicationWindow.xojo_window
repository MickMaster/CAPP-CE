#tag Window
Begin Window ApplicationWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   614
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Application"
   Visible         =   True
   Width           =   1040
   Begin Listbox ModuleList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   7
      ColumnsResizable=   False
      ColumnWidths    =   "30,60,70,70,70,100,150"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   542
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   " 	ID	Structure	Type	Name	Input	Template	Output"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   553
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Timer Timer1
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Rectangle Rectangle1
      AutoDeactivate  =   True
      BorderWidth     =   0
      BottomRightColor=   &c2F9E3100
      Enabled         =   True
      FillColor       =   &cB3B3B300
      Height          =   40
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      Top             =   574
      TopLeftColor    =   &c99FFB300
      Transparent     =   True
      Visible         =   True
      Width           =   1040
      Begin Label HelpMessage
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlign       =   1
         TextColor       =   &c107F4000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   583
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1040
      End
   End
   Begin TextArea ResultDisplay
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cE7E7E700
      Bold            =   False
      Border          =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   542
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   659
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   False
      Styled          =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextColor       =   &c107F0100
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   361
   End
   Begin Canvas Canvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   1375096831
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   585
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   62
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  g_Module_id = Val(ModuleList.Cell(ModuleList.ListIndex, 1))
		  ModuleListLine = ModuleList.ListIndex
		  RefreshResultDisplay
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  
		  db.Close
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim DebugString As String
		  
		  If Asc(key)=35 Then    ' Scancode ESC
		    Me.close
		    Return True
		  End If
		  
		  System.DebugLog("Windows-Key: " + Str(Asc(key)))
		  
		  ModuleListLine = ModuleList.ListIndex
		  DebugString = "Key: " + Str(Asc(key))
		  System.DebugLog(DebugString.ToText)
		  
		  If Keyboard.AsynckeyDown(&h22) Then
		    g_SQLstring = "INSERT INTO Modules (system_id, name, structure) VALUES ('" + Trim(Str(g_System_id)) + "', '<new>', 1)"
		    xojo.System.DebugLog(g_SQLstring.ToText)
		    db.SQLExecute(g_SQLstring)
		    If db.Error Then
		      MsgBox("Database Error: " + db.ErrorMessage)
		    End If
		    g_RefreshWindow = True
		    Return True
		  End If
		  
		  If Keyboard.AsynckeyDown(&h02) Then
		    g_SQLstring = "DELETE FROM Modules WHERE ID=" + ModuleList.Cell(ModuleList.ListIndex, 1) + ";"
		    System.DebugLog(g_SQLstring.ToText)
		    db.SQLExecute(g_SQLstring)
		    If db.Error Then
		      MsgBox("DB Error: " + db.ErrorMessage)
		    End If
		    g_RefreshWindow = True
		    Return True
		  End If
		  
		  If Keyboard.AsynckeyDown(&h0E) Then
		    
		    g_Module_id = Val(ModuleList.Cell(ModuleList.ListIndex, 1))
		    g_Template = ModuleList.Cell(ModuleList.ListIndex, 6)
		    Dim ew As New EmbedsWindow
		    ew.Show
		    
		    Return True
		  End If
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  If Asc(key)=27 Then Me.Close
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  ModuleList.DeleteAllRows
		  
		  Dim ret As Integer
		  Dim f As FolderItem
		  f = GetFolderItem("CAPP.sqlite")
		  db = New SQLiteDatabase
		  db.DatabaseFile = f
		  If Not db.Connect Then
		    MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		  End If
		  
		  GetModules
		  
		  ModuleList.Selected(0) = True
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub GetModules()
		  Dim ret,row As Integer
		  
		  rs = db.SQLSelect("SELECT * FROM Modules WHERE system_id = " + Trim(Str(g_system_id)) + " ORDER BY structure ASC")
		  ' 
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  
		  ModuleList.DeleteAllRows
		  ' 
		  row = 0
		  '
		  If rs <> Nil Then
		    While Not rs.EOF
		      ModuleList.AddRow( _
		      "", _
		      rs.Field("id").StringValue, _
		      rs.Field("structure").StringValue, _
		      rs.Field("once").StringValue, _
		      rs.Field("name").StringValue, _
		      rs.Field("input").StringValue, _
		      rs.Field("tpl_1").StringValue, _
		      rs.Field("output").StringValue, _
		      rs.Field("error").StringValue )
		      If rs.IdxField(18).Value > 0 Then
		        ModuleList.RowPicture(row) = erroricon
		      End If
		      
		      row = row + 1
		      rs.MoveNext
		    Wend
		    rs.Close
		  End If
		  
		  ModuleList.SetFocus
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshResultDisplay()
		  Dim ret As Integer
		  
		  g_SQLstring = _
		  "SELECT * FROM Modules WHERE id = '" + _
		  Str(g_Module_id) + _
		  "' AND system_id = " + _
		  Str(g_System_id)
		  
		  System.DebugLog g_SQLstring
		  rs = db.SQLSelect(g_SQLstring)
		  
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  ' 
		  While Not rs.EOF
		    ResultDisplay.Text = "##### " + Str(g_Module_id) + " #####" + Chr(13) + rs.Field("result").StringValue
		    ResultDisplay.ScrollPosition = ResultDisplay.LineNumAtCharPos(ResultDisplay.Text.Len)
		    ResultDisplay.Refresh
		    Exit
		  Wend
		  rs.Close
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		ModuleListLine As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		SQLstring As String
	#tag EndProperty


#tag EndWindowCode

#tag Events ModuleList
	#tag Event
		Sub DoubleClick()
		  
		  Dim row, column As Integer
		  
		  row = Me.RowFromXY(Me.MouseX - Me.Left , Me.MouseY - Me.Top)
		  column = Me.ColumnFromXY(Me.MouseX - Me.Left, Me.MouseY - Me.Top )
		  
		  g_Module_id = Val(ModuleList.Cell(row, 1))
		  
		  ModuleListLine = ModuleList.ListIndex
		  '
		  Dim mw As New ModuleWindow
		  mw.Show
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  If (Asc(key)=3 Or Asc(key)=13) Then ' ENTER
		    
		    g_Module_id = Val(ModuleList.Cell(ModuleList.ListIndex, 1))
		    ModuleListLine = ModuleList.ListIndex
		    
		    Return True ' we handled the key.... OS will ignore it now
		  End If
		  
		  If Asc(key)=27 Then Return True
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub KeyUp(Key As String)
		  If Asc(key)=13 Then ' ENTER
		    
		    Dim mw As New ModuleWindow
		    mw.Show
		    
		  End If
		  
		  If Asc(key)=30 Or Asc(key)=31 Then 
		    
		    g_Module_id = Val(ModuleList.Cell(ModuleList.ListIndex, 1))
		    ModuleListLine = ModuleList.ListIndex
		    RefreshResultDisplay
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  HelpMessage.Text = "Press Enter to edit, ESC to leave, ""D"" for delete, ""I"" for insert"
		  RefreshResultDisplay
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  row = Me.RowFromXY(Me.MouseX - Me.Left , Me.MouseY - Me.Top)
		  column = Me.ColumnFromXY(Me.MouseX - Me.Left, Me.MouseY - Me.Top )
		  
		  g_Module_id = Val(ModuleList.Cell(row, 1))
		  
		  RefreshResultDisplay
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  If g_RefreshWindow Then 
		    GetModules
		    g_RefreshWindow = False
		    If ModuleListLine <> 0 Then
		      ModuleList.ListIndex = ModuleListLine
		    End If
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
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
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
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
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
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
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
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
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
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
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
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
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SQLstring"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ModuleListLine"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
