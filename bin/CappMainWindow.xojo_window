#tag Window
Begin Window CappMainWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   14893055
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   352
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1276878847
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "CAPP"
   Visible         =   True
   Width           =   564
   Begin CappToolbar CappCappToolbar
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Visible         =   True
   End
   Begin Timer ErrorTimer
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   500
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   315
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CAPP® Community Edition"
      TextAlign       =   2
      TextColor       =   &c99999900
      TextFont        =   "System"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   244
   End
   Begin Label CAPPLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   430
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CAPP.systems"
      TextAlign       =   2
      TextColor       =   &c0000FE00
      TextFont        =   "System"
      TextSize        =   15.0
      TextUnit        =   0
      Top             =   312
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   114
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  '
		  Dim Kee As Integer
		  Kee = Asc(key)
		  Select Case Kee
		    
		  Case 69, 101  ' E e - Environment
		    
		    Dim ew As New EnvironmentWindow
		    ew.show
		    
		  Case 83, 115  ' S s - System
		    
		    Dim sw As New SystemWindow
		    sw.show
		    
		  Case 65, 97  ' A a - Application (with Structure)
		    
		    Dim aw As New ApplicationWindow
		    aw.Show
		    
		  Case 66, 98  ' B b - aBout
		    
		    Dim bw As New AboutWindow
		    bw.Show
		    
		  Case 68, 100  ' D d - Document
		    
		    Dim bw As New AboutWindow
		    bw.Show
		    
		  Case 71, 103 ' G g - Generate
		    
		    Dim gw As New ExecuteWindow
		    gw.Show
		    
		  Case 87, 119 ' W w - Wizard
		    
		    Dim ww As New WizardWindow
		    ww.Show
		    
		  Case 82, 114 ' R r - Run
		    
		    g_OpenOutput
		    
		  Case 27      ' Esc
		    Quit
		    
		  End Select
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
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
		  g_System_id = 1
		  g_Module_id = 1
		  g_SetStartmodule = False
		  g_Running = False
		  
		  g_GetParameters
		  
		  CappMainWindow.Title = "CAPP " + App.Version
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events CappCappToolbar
	#tag Event
		Sub Action(item As ToolItem)
		  Select Case item.Name
		  Case "EnvironmentButton"
		    
		    Dim ew As New EnvironmentWindow
		    ew.show
		    
		  Case "ApplicationButton"
		    
		    Dim aw As New ApplicationWindow
		    aw.Show
		    
		  Case "SystemButton"
		    
		    Dim sw As New SystemWindow
		    sw.Show
		    
		  Case "GenerateButton"
		    '
		    If Not g_Running Then 
		      Dim gw As New ExecuteWindow
		      gw.Show
		    End If
		    
		    
		  Case "WizardButton"
		    
		    Dim ww As New WizardWindow
		    ww.Show
		    
		  Case "AboutButton"
		    
		    Dim bw As New AboutWindow
		    bw.Show
		    
		  End Select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ErrorTimer
	#tag Event
		Sub Action()
		  Dim b As ToolButton
		  If g_Error > 0 And g_Error < 999999 Then
		    
		    If CappCappToolbar.item(3) IsA ToolButton Then
		      b=ToolButton(CappCappToolbar.item(3))
		      b.icon=startredicon
		    End If
		    
		  Else
		    
		    If CappCappToolbar.item(3) IsA ToolButton Then
		      b=ToolButton(CappCappToolbar.item(3))
		      b.icon=starticon
		    End If
		    
		    If g_Error = 999999 Then
		      
		      g_Error = 0
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CAPPLabel
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL("http://capp.systems")
		End Function
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
#tag EndViewBehavior
