#tag Window
Begin Window ModuleWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   602
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
   Title           =   "Module"
   Visible         =   True
   Width           =   814
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
      TabIndex        =   3
      TabPanelIndex   =   0
      Top             =   562
      TopLeftColor    =   &c99FFB300
      Transparent     =   False
      Visible         =   True
      Width           =   814
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
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
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
         Top             =   571
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   814
      End
   End
   Begin GroupBox InputBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Input"
      Enabled         =   True
      Height          =   206
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   347
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   447
      Begin TextField EditTables
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "InputBox"
         Italic          =   False
         Left            =   431
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   89
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   307
      End
      Begin Canvas Canvas5
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   1389531135
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   52
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "InputBox"
         Left            =   367
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   77
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   52
      End
      Begin Canvas CanvasTemplate
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   2111297535
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   52
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "InputBox"
         Left            =   367
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   141
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   52
      End
      Begin TextField EditTpl_1
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "InputBox"
         Italic          =   False
         Left            =   431
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   151
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   307
      End
      Begin PushButton GetITpl_1Button
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "2"
         Cancel          =   False
         Caption         =   "..."
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "InputBox"
         Italic          =   False
         Left            =   750
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   24
      End
   End
   Begin GroupBox ControlBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Control"
      Enabled         =   True
      Height          =   530
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   315
      Begin Canvas CanvasParameter
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   1929506815
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   55
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   308
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   52
      End
      Begin Canvas CanvasAction
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   1862230015
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   52
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   235
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   52
      End
      Begin Canvas CanvasModulename
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   947591167
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   64
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   66
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   61
      End
      Begin Canvas CanvasStructure
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   542998527
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   56
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   138
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   61
      End
      Begin TextField EditModuleName
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Italic          =   False
         Left            =   102
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   88
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   210
      End
      Begin TextField EditModuleStructure
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Italic          =   False
         Left            =   102
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   210
      End
      Begin PushButton SetParameterButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "2"
         Cancel          =   False
         Caption         =   "..."
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Italic          =   False
         Left            =   104
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   323
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   24
      End
      Begin ComboBox SelectAction
         AutoComplete    =   True
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         InitialValue    =   "Once\nMultiple\nResource\nIgnore"
         Italic          =   False
         Left            =   102
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   250
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   210
      End
      Begin Label ShowParameter
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   162
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ControlBox"
         Italic          =   False
         Left            =   38
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "(No parameters found)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Courier"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   375
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   275
      End
   End
   Begin GroupBox OutputBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Output"
      Enabled         =   True
      Height          =   123
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   347
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   427
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   447
      Begin Canvas CanvasOutput
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   1897121791
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   54
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "OutputBox"
         Left            =   367
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   463
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin TextField EditOutputfile
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "OutputBox"
         Italic          =   False
         Left            =   429
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   479
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   305
      End
   End
   Begin Timer Timer1
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin GroupBox EmbedBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Embeds"
      Enabled         =   True
      Height          =   177
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   347
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   238
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   447
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
         InitialParent   =   "EmbedBox"
         Left            =   367
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   False
         Top             =   274
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   62
      End
      Begin PushButton SetEmbedsButton1
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "2"
         Cancel          =   False
         Caption         =   "..."
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "EmbedBox"
         Italic          =   False
         Left            =   441
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   293
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   24
      End
   End
   Begin Label ShowEmbeds
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   49
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   367
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "(no embeds found)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Courier"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   346
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   407
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		  g_RefreshParameters = True
		  g_RefreshWindow = True
		  
		  SetModuleFields
		  
		  rs = Nil 
		  db = Nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  If Asc(key)=27 Then Me.Close
		  If Asc(key)=13 Then Me.Close
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  GetModule
		  
		  GetEmbeds
		  
		  RefreshParameters
		  
		End Sub
	#tag EndEvent


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
		  
		  ShowEmbeds.Text = ""
		  ' 
		  row = 0
		  '
		  If rs <> Nil Then
		    While Not rs.EOF
		      If rs.IdxField(5).StringValue <> "" Then 
		        ShowEmbeds.Text = ShowEmbeds.Text + rs.IdxField(4).StringValue + Chr(13)
		      End If
		      rs.MoveNext
		    Wend
		    rs.Close
		  End If
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetModule()
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
		  Dim f As FolderItem
		  
		  f = GetFolderItem("CAPP.sqlite")
		  db = New SQLiteDatabase
		  db.DatabaseFile = f
		  If Not db.Connect Then
		    MsgBox "An error occured connecting to the database" + EndOfLine + db.ErrorMessage
		  End If
		  
		  rs = db.SQLSelect("SELECT * FROM Modules WHERE id = " + Trim(Str(g_Module_Id)))
		  ' 
		  If db.Error Then
		    ret = MsgBox("Database Error: " + db.ErrorMessage, 48)
		    Return
		  End If
		  ' 
		  If rs <> Nil Then
		    
		    EditModuleName.Text = rs.IdxField(3).StringValue        ' NAME 
		    EditModuleStructure.Text = rs.IdxField(4).StringValue   ' STRUCTURE
		    EditTables.Text = rs.IdxField(5).StringValue            ' INPUT
		    EditOutputfile.Text = rs.IdxField(6).StringValue        ' OUTPUT
		    SelectAction.Text = rs.IdxField(7).StringValue          ' CONTROL = ACTION
		    EditTpl_1.Text = rs.IdxField(12).StringValue            ' TPL_1
		    SelectAction.Text = rs.IdxField(15).StringValue         ' ONCE
		    rs.Close
		    
		  Else
		    MsgBox("Record not found !")
		  End If
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshParameters()
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
		  ShowParameter.Text = ""
		  
		  rs = db.SQLSelect("SELECT * FROM Parameters WHERE module_id = " + Str(g_module_id))
		  While Not rs.EOF
		    Dim ParName As String
		    ParName = Left(rs.IdxField(4).StringValue + "                                ", 20)
		    ShowParameter.Text = ShowParameter.Text + ParName + ": " + rs.IdxField(5).StringValue + Chr(13)
		    rs.MoveNext
		  Wend
		  g_RefreshParameters = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetModuleFields()
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
		  If Len(Trim(EditModuleName.Text)) > 0 Then
		    
		    SQLstring = _
		    "UPDATE Modules SET" + _
		    " name = '" + Trim(EditModuleName.Text) + "'," + _
		    " structure = '" + Trim(EditModuleStructure.Text) + "'," + _
		    " output = '" + Trim(EditOutputFile.Text) + "'," + _
		    " input = '" + Trim(EditTables.Text) + "'," + _
		    " tpl_1 = '" + Trim(EditTpl_1.Text) + "'," + _
		    " once = '" + Trim(SelectAction.Text ) + "'" + _
		    " WHERE id = " + Str(g_Module_id)
		    
		    System.DebugLog SQLString
		    db.SQLExecute(SQLString) 
		    
		  End If
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		SQLstring As String
	#tag EndProperty


#tag EndWindowCode

#tag Events InputBox
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditTables
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Canvas5
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Enter Table-Name(s) to use"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CanvasTemplate
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Enter templates to run for this module"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditTpl_1
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events GetITpl_1Button
	#tag Event
		Sub Action()
		  EditTpl_1.Text = g_GetFile(g_ControlPath + "/" + g_Language, "*.vm", "Select Template").Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CanvasParameter
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Enter template parameters for this module"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CanvasAction
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Select the action to be done for this module"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CanvasModulename
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Unique name of this module inside the system"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CanvasStructure
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Enter a structure code for this module, i.e. 1.4.2 (also determines the order)"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditModuleName
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  HelpMessage.Text = "Use an unique and meaningful name for your module"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditModuleStructure
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  HelpMessage.Text = "Control the placement by using a structure attribute like 1.5.2"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SetParameterButton
	#tag Event
		Sub Action()
		  
		  Dim pw As New ParameterWindow
		  pw.show
		  g_Parameter = ""
		  g_RefreshParameters = True
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAction
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  Dim ret As Integer
		  
		  If  SelectAction.Text = "Multiple" Then
		    If InStr(EditOutputfile.Text, "*") < 1 Then
		      ret = MsgBox("Please put a * into the output filename for processing of multiple output files!", 48, "CAPP")
		    End If
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShowParameter
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Parameters set for current module " + EditModuleName.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CanvasOutput
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Output of template and parameters goes into this file"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditOutputfile
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key)=27 Then Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  HelpMessage.Text = "Name of the output module, * for multiple, # for Startmodule/Systemname"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  If g_RefreshParameters Then 
		    RefreshParameters
		    GetEmbeds
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SetEmbedsButton1
	#tag Event
		Sub Action()
		  
		  g_Template = EditTpl_1.Text
		  
		  Dim ew As New EmbedsWindow
		  ew.show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShowEmbeds
	#tag Event
		Sub MouseEnter()
		  HelpMessage.Text = "Parameters set for current module " + EditModuleName.Text
		  
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
	#tag ViewProperty
		Name="id"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
