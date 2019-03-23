#tag Window
Begin Window EmbedsWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   580
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
   Title           =   "Embeds"
   Visible         =   True
   Width           =   926
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
      TabIndex        =   2
      TabPanelIndex   =   0
      Top             =   540
      TopLeftColor    =   &c99FFB300
      Transparent     =   True
      Visible         =   True
      Width           =   926
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
         Top             =   549
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   926
      End
   End
   Begin TextArea ResultDisplay
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFEFE00
      Bold            =   True
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   508
      HelpTag         =   ""
      HideSelection   =   False
      Index           =   -2147483648
      Italic          =   False
      Left            =   440
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
      ScrollbarHorizontal=   True
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextColor       =   &c107F4000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   466
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
      Left            =   366
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   62
   End
   Begin Listbox EmbedsList
      AutoDeactivate  =   False
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   False
      ColumnWidths    =   "30,50,300"
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
      Height          =   508
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   " 	ID	Embed"
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
      TabIndex        =   1
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
      Width           =   334
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  db.Close
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=35 Then 
		    Me.close
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
		  
		  EmbedsList.DeleteAllRows
		  
		  Dim ret As Integer
		  Dim f As FolderItem
		  
		  f = GetFolderItem("CAPP.sqlite")
		  db = New SQLiteDatabase
		  db.DatabaseFile = f
		  If Not db.Connect Then
		    MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		  End If
		  
		  GetEmbedList
		  
		  GetEmbeds
		  
		  EmbedsList.Selected(0) = True
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub GetEmbedList()
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
		  '  Good start is setting all related embeds to ORPHaned until better knowledge
		  '
		  g_SQLstring = "UPDATE Embeds SET orphaned = 1 WHERE module_id = " + Str(g_Module_id)
		  db.SQLExecute(g_SQLstring)
		  System.DebugLog "Set all findings to orphaned: " + g_SQLstring
		  '
		  ' If there IS NO template, skip it all
		  '
		  If Len(Trim(g_Template)) = 0 Then 
		    MsgBox("No Template assigned - no embeds")
		    Return
		  End If
		  '
		  '  Read first template file into buffer
		  '
		  Dim f As FolderItem
		  Dim t As TextInputStream
		  Dim ret,m_len As Integer
		  Dim m_path As String
		  Dim m_embedname As String
		  '
		  m_path = g_ControlPath + "/" + g_Language + "/" + g_Template
		  f = GetFolderItem(m_path, 1)
		  System.debuglog "Reading " + m_path
		  If f.exists Then
		    t = TextInputStream.Open(f)
		    '
		    While Not t.EOF
		      Template = t.ReadLine
		      '
		      ' Now scan template for embeds
		      '
		      If InStr(Template, "#Embed")>0 Then
		        
		        m_len = InStr(Template, """")
		        Template = Right(Template, Len(Template)-m_len)
		        m_len = InStr(Template, """")
		        Template = Left(Template, m_len-1)
		        l_Names.Append(Template)
		        
		      Else
		      End If
		    Wend
		    '
		    t.Close
		  Else
		    ret = MsgBox("Error reading template file", 48)
		  End If
		  '
		  ' All Embed names of the current template are in l_Names array, compare against database now
		  '
		  For i As Integer = 0 To Ubound(l_Names)
		    '
		    rs = db.SQLSelect("SELECT * FROM Embeds WHERE system_id = " + _
		    Trim(Str(g_system_id)) + _
		    " AND module_id = " + _
		    Trim(Str(g_Module_id)) + _
		    " AND name = """ + _
		    Trim(l_Names(i)) + _
		    """ ")
		    System.DebugLog "SELECT * FROM Embeds WHERE system_id = " + _
		    Trim(Str(g_system_id)) + _
		    " AND module_id = " + _
		    Trim(Str(g_Module_id)) + _
		    " AND name = """ + _
		    Trim(l_Names(i)) + _
		    """ "
		    ' 
		    If db.Error Then
		      ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		      Return
		    End If
		    '
		    If rs.RecordCount > 0 Then
		      System.DebugLog "Embed " + l_Names(i) + " found in database"
		      '
		      ' Remove the ORPHaned flag
		      '
		      db.SQLExecute("UPDATE Embeds SET orphaned = 0 WHERE id = " + rs.IdxField(1).StringValue)
		      '
		    Else
		      '
		      ' Create a new embed entry
		      '
		      g_SQLstring = "INSERT INTO Embeds (system_id, module_id, name) VALUES (" + _
		      Trim(Str(g_System_id)) + _
		      ", " + _
		      Trim(Str(g_Module_id)) + _
		      ", """ + _
		      Trim(l_Names(i)) + _
		      """)"
		      '
		      System.DebugLog "Insert embed: " + g_SQLstring
		      db.SQLExecute(g_SQLstring)
		      If db.Error Then
		        MsgBox("Database Error: " + db.ErrorMessage)
		      End If
		    End If
		    rs.close
		  Next
		  '
		  Exception err As OLEException
		    MsgBox err.Message
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetEmbeds()
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
		  Dim ret,row As Integer
		  
		  rs = db.SQLSelect("SELECT * FROM Embeds WHERE system_id = " + _
		  Trim(Str(g_system_id)) + _
		  " AND module_id = " + _
		  Trim(Str(g_Module_id)) + _
		  " ORDER BY name ASC")
		  ' 
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  
		  EmbedsList.DeleteAllRows
		  ' 
		  row = 0
		  '
		  If rs <> Nil Then
		    While Not rs.EOF
		      EmbedsList.AddRow( _
		      "", _
		      rs.IdxField(1).StringValue, _
		      rs.IdxField(4).StringValue)
		      If rs.IdxField(6).Value > 0 Then ' There are orphans, so show the problem 
		        Embedslist.RowPicture(row) = orphanicon
		      End If
		      row = row + 1
		      rs.MoveNext
		    Wend
		    rs.Close
		  End If
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshResultDisplay()
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
		  Dim ret As Integer
		  Dim m_Result As String
		  
		  g_SQLstring = _
		  "SELECT * FROM Embeds WHERE id = '" + _
		  Str(g_embed_id) + _
		  "' AND system_id = " + _
		  Str(g_System_id)
		  
		  System.DebugLog "RefreshResult : " + g_SQLstring
		  rs = db.SQLSelect(g_SQLstring)
		  
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  ' 
		  While Not rs.EOF
		    
		    m_Result = rs.Field("embed").StringValue
		    m_Result = ReplaceAll(m_Result, Chr(255), "'" )
		    ResultDisplay.Text = m_Result
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
		EmbedsListLine As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		l_Names() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		SQLstring As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Template As String
	#tag EndProperty


#tag EndWindowCode

#tag Events ResultDisplay
	#tag Event
		Sub LostFocus()
		  '
		  ' Update embed field in Embeds table
		  '
		  Dim m_Result As String
		  Dim ret As Integer
		  
		  m_Result = ResultDisplay.Text
		  m_Result = ReplaceAll(m_Result, "'", Chr(255))
		  
		  g_SQLstring = "UPDATE Embeds SET embed = '" + m_Result + "' WHERE id = " + Str(g_Embed_id)
		  db.SQLExecute(g_SQLstring)
		  System.DebugLog "ResultDisplay lost focus: " + g_SQLstring
		  '
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  '
		End Sub
	#tag EndEvent
	#tag Event
		Sub KeyUp(Key As String)
		  If Asc(key)=27 Then EmbedsWindow.Close
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EmbedsList
	#tag Event
		Sub DoubleClick()
		  
		  Dim row, column As Integer
		  
		  row = Me.RowFromXY(Me.MouseX - Me.Left , Me.MouseY - Me.Top)
		  column = Me.ColumnFromXY(Me.MouseX - Me.Left, Me.MouseY - Me.Top )
		  
		  g_Module_id = Val(EmbedsList.Cell(row, 1))
		  g_Embed_id = Val(EmbedsList.Cell(EmbedsList.ListIndex, 1))
		  
		  EmbedsListLine = EmbedsList.ListIndex
		  '
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  If (Asc(key)=3 Or Asc(key)=13) Then ' ENTER
		    
		    g_Embed_id = Val(EmbedsList.Cell(EmbedsList.ListIndex, 1))
		    EmbedsListLine = EmbedsList.ListIndex
		    
		    Return True ' we handled the key.... OS will ignore it now
		  End If
		  
		  If Asc(key)=27 Then Return True
		  
		  If Keyboard.AsynckeyDown(&h02) Then ' (D)elete Embed
		    '
		    g_Embed_id = Val(EmbedsList.Cell(EmbedsList.ListIndex, 1))
		    db.SQLExecute( "DELETE FROM Embeds WHERE id =" + Str(g_Embed_id) + ";")
		    If db.Error Then
		      MsgBox("DB Error: " + db.ErrorMessage)
		    End If
		    
		    GetEmbedList
		    
		    GetEmbeds
		    
		    RefreshResultDisplay
		    
		    Return True
		  End If
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub KeyUp(Key As String)
		  If Asc(key)=30 Or Asc(key)=31 Then 
		    
		    g_Embed_id = Val(EmbedsList.Cell(EmbedsList.ListIndex, 1))
		    EmbedsListLine = EmbedsList.ListIndex
		    
		  End If
		  
		  RefreshResultDisplay
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  
		  g_Embed_id = Val(EmbedsList.Cell(EmbedsList.ListIndex, 1))
		  RefreshResultDisplay
		  
		  HelpMessage.Text = "Press ESC to leave, ""D"" to delete"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  row = Me.RowFromXY(Me.MouseX - Me.Left , Me.MouseY - Me.Top)
		  column = Me.ColumnFromXY(Me.MouseX - Me.Left, Me.MouseY - Me.Top )
		  
		  g_Embed_id = Val(EmbedsList.Cell(row, 1))
		  
		  RefreshResultDisplay
		  
		End Function
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
		Name="EmbedsListLine"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Template"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
