#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Function g_GetFile(lPath as String, lMask as string, lTitle as String) As FolderItem
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
		  Try
		    Dim f As FolderItem = GetTrueFolderItem(lPath, 1)
		    Dim dlg As New OpenDialog 
		    
		    dlg.ActionButtonCaption = "Select"
		    dlg.Title = "Select File"
		    dlg.PromptText = lTitle
		    dlg.InitialDirectory = f
		    dlg.Filter = lMask
		    
		    f = dlg.ShowModal
		    If f <> Nil Then
		      Return f
		    Else
		      Return GetFolderItem(lPath, 1)
		    End
		    
		  Catch e As RunTimeException
		    Dim t As Introspection.TypeInfo = Introspection.GetType(e)
		    If t <> Nil Then
		      MsgBox("An exception of type '" + t.FullName + "' was caught." + Chr(13) + Chr(13) + "Using default value(s).")
		    Else
		      ' this should never happen...
		    End If
		    Return SpecialFolder.Applications
		  End Try
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_GetModule()
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
		  Dim f As FolderItem
		  f = GetFolderItem("CAPP.sqlite")
		  g_db = New SQLiteDatabase
		  g_db.DatabaseFile = f
		  If Not g_db.Connect Then
		    MsgBox "No CAPP Database found - terminating! " + EndOfLine + g_db.ErrorMessage
		    Quit
		  End If
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'ControlPath'")
		  If Not g_rs.EOF Then 
		    g_ControlPath = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'ControlPath', '' )")
		  End
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'InputPath'")
		  If Not g_rs.EOF Then 
		    g_InputPath = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'InputPath', '' )")
		  End
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'OutputPath'")
		  If Not g_rs.EOF Then 
		    g_OutputPath = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'OutputPath', '' )")
		  End
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'DatabaseEditor'")
		  If Not g_rs.EOF Then 
		    g_DatabaseEditor = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'DatabaseEditor', '' )")
		  End
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'TemplateEditor'")
		  If Not g_rs.EOF Then 
		    g_TemplateEditor = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'TemplateEditor', '' )")
		  End
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'XmlEditor'")
		  If Not g_rs.EOF Then 
		    g_XmlEditor = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'XmlEditor', '' )")
		  End
		  
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = 'TextEditor'")
		  If Not g_rs.EOF Then 
		    g_TextEditor = g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, 'TextEditor', '' )")
		  End 
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function g_GetParameter(f_Parameter as String, f_Default as string) As String
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
		  ' Get a parameter from file, if not found set it to default
		  '
		  g_rs = g_db.SQLSelect("SELECT * FROM Parameters WHERE name = '" + f_Parameter + "'")
		  If Not g_rs.EOF Then 
		    Return g_rs.Field("Content").StringValue
		  Else
		    g_db.SQLExecute("INSERT INTO Parameters (system_id, module_id, name, content) VALUES (1, 0, '" + f_Parameter + "', '" + f_Default + "' )")
		    Return f_default
		  End
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_GetParameters()
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
		  Dim f As FolderItem
		  f = GetFolderItem("CAPP.sqlite")
		  g_db = New SQLiteDatabase
		  g_db.DatabaseFile = f
		  If Not g_db.Connect Then
		    MsgBox "No CAPP Database found - terminating! " + EndOfLine + g_db.ErrorMessage
		    Quit
		  End If
		  '
		  system.debuglog "SQLite Version: " + g_Db.LibraryVersion 
		  '
		  ' System stuff
		  '
		  g_Language = g_GetParameter("Language", "XOJO")
		  g_StartModule = g_GetParameter("StartModule", "")
		  '
		  ' Environment stuff
		  '
		  g_ControlPath = g_GetParameter("ControlPath", "")
		  g_InputPath = g_GetParameter("InputPath", "")
		  g_OutputPath = g_GetParameter("OutputPath", "")
		  g_VelocityPath = g_GetParameter("VelocityPath", "")
		  g_DatabaseEditor = g_GetParameter("DatabaseEditor", "")
		  g_TemplateEditor = g_GetParameter("TemplateEditor", "")
		  g_XmlEditor = g_GetParameter("XMLEditor", "")
		  g_TextEditor = g_GetParameter("TextEditor", "")
		  g_ExecutionApp = g_GetParameter("ExecutionApp", "")
		  ' 
		  ' Database stuff
		  '
		  g_DBMS = g_GetParameter("Dbms", "MYSQL")
		  g_Database = g_GetParameter("Database", "")
		  g_Driver = g_GetParameter("Driver", "com.mysql.jdbc.Driver")
		  g_URL = g_GetParameter("URL", "localhost:3306")
		  g_User = g_GetParameter("User", "root")
		  g_Password = g_GetParameter("Password", "")
		  
		  Exception err As OLEException 
		    MsgBox err.Message
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function g_GetPath(lPath as String, lMask as string, lTitle as String) As FolderItem
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
		  Try
		    If Len(Trim(lPath)) = 0 Then lPath = "/"
		    Dim f As FolderItem = GetTrueFolderItem(lPath, 1)
		    Dim dlg As New SelectFolderDialog 
		    
		    dlg.ActionButtonCaption = "Select"
		    dlg.Title = "Select Path"
		    dlg.PromptText = lTitle
		    dlg.InitialDirectory = f
		    
		    f = dlg.ShowModal
		    If f <> Nil Then
		      Return f
		    Else
		      Return GetFolderItem(lPath, 1)
		    End
		    
		  Catch e As RunTimeException
		    Dim t As Introspection.TypeInfo = Introspection.GetType(e)
		    If t <> Nil Then
		      MsgBox("An exception of type '" + t.FullName + "' was caught." + Chr(13) + Chr(13) + "Using default value(s).")
		    End If
		    Return SpecialFolder.Applications
		  End Try
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_OpenOutput()
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
		  Dim dlg As New OpenDialog 
		  Dim f As FolderItem
		  f = GetFolderItem(g_VelocityPath + "/" + g_OutputPath, f.PathTypeShell)
		  If Not f.Exists Then
		    MsgBox("Path not found : " + g_VelocityPath + "/" + g_OutputPath)
		  End If
		  dlg.Title = "Open generated Output File" 
		  dlg.InitialDirectory = f
		  f = dlg.ShowModal
		  If f <> Nil Then
		    Dim sh As New Shell    
		    Dim res As String
		    Dim s As Shell
		    sh.mode = 2
		    s = New Shell
		    System.DebugLog "open " + g_TextEditor + " " + f.NativePath 
		    s.Execute("open " + g_TextEditor + " " + f.NativePath )
		    If s.ErrorCode <> 0 Then
		      MsgBox("OS error code: " + Str(s.ErrorCode))
		    End 
		  End If 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_OpenTemplate()
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
		  Dim dlg As New OpenDialog 
		  Dim f As FolderItem
		  f = GetFolderItem(g_ControlPath + "/" + g_Language, f.PathTypeShell)
		  If Not f.Exists Then
		    MsgBox("Path not found : " + g_ControlPath + "/" + g_Language)
		  End If
		  dlg.Title = "Open Template File" 
		  dlg.InitialDirectory = f
		  f = dlg.ShowModal
		  If f <> Nil Then
		    Dim sh As New Shell    
		    Dim res As String
		    Dim s As Shell
		    sh.mode = 2
		    s = New Shell
		    System.DebugLog "open " + g_TemplateEditor + " " + f.NativePath 
		    s.Execute("open " + g_TemplateEditor + " " + f.NativePath )  ' add -n if new window required
		    If s.ErrorCode <> 0 Then
		      MsgBox("OS error code: " + Str(s.ErrorCode))
		    End 
		  End If 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_RestoreConnection()
		  
		  g_Module_id = 0
		  
		  Dim dw As New DatabaseWindow
		  dw.ShowModal
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_RestoreDatabase()
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
		  Dim myRandom As New Random
		  Dim ft As New FileType
		  Dim r As Integer
		  Dim f As FolderItem
		  
		  g_Db.Close
		  If g_db.ErrorCode <> 0 Then
		    MsgBox("Closing the database failed : " + Str(g_db.ErrorCode) )
		  End If
		  
		  f = GetFolderItem("CAPP.sqlite")
		  If f.LastErrorCode <> 0 Then
		    MsgBox("Database not found : " + Str(f.LastErrorCode) )
		  End If
		  
		  r = myRandom.InRange(100000, 999999)
		  f.Name = "CAPP"+Str(r)+".sqlite"
		  If f.LastErrorCode <> 0 Then
		    MsgBox("Rename of existing database failed : " + Str(f.LastErrorCode) )
		  End If
		  
		  f = GetFolderItem("CAPP_minimum.sqlite")
		  f.CopyFileTo(GetFolderItem("").Child("CAPP.sqlite"))
		  If f.LastErrorCode <> 0 Then
		    MsgBox("Copy of default database failed : " + Str(f.LastErrorCode) )
		  End If
		  
		  g_GetParameters
		  
		  MsgBox("CAPP original settings restored")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_RestoreInit()
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
		  Dim r As Integer
		  Dim f As FolderItem
		  Dim s As String
		  
		  g_GetParameters
		  
		  f = GetFolderItem("")
		  s = Left(f.NativePath,Len(Trim(f.NativePath))-4)
		  
		  g_InputPath = s + "/in"
		  g_ControlPath = s + "/ctl/TelosysTools/templates"
		  g_VelocityPath = s + "/ctl"
		  g_OutputPath = "../out"
		  
		  g_SetParameters
		  
		  MsgBox("CAPP initial settings restored")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub g_SetParameters()
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
		  ' Store parameters back to database
		  '
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_ControlPath + "' WHERE name = 'ControlPath'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_DatabaseEditor + "' WHERE name = 'DatabaseEditor'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_InputPath + "' WHERE name = 'InputPath'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_OutputPath + "' WHERE name = 'OutputPath'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_VelocityPath + "' WHERE name = 'VelocityPath'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_TemplateEditor + "' WHERE name = 'TemplateEditor'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_TextEditor + "' WHERE name = 'TextEditor'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_XmlEditor + "' WHERE name = 'XMLEditor'"
		  g_db.SQLExecute(g_SQLstring) 
		  g_SQLstring = "UPDATE Parameters SET content = '" + g_ExecutionApp + "' WHERE name = 'ExecutionApp'"
		  g_db.SQLExecute(g_SQLstring) 
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		g_ControlPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Database As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_DatabaseEditor As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Db As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		g_DBMS As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Driver As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Embed_id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Error As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		g_ExecutionApp As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		g_InputPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Language As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Module_id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		g_OutputPath As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662066696C6C656420506172616D7465722073657474696E67206973206669786564
		g_Parameter As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Password As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_RefreshParameters As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		g_RefreshWindow As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Results As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Running As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		g_SetStartmodule As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		g_SQLstring As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_StartModule As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_System_id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		g_Template As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_TemplateEditor As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_TextEditor As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_URL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_User As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_VelocityPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		g_XmlEditor As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_TemplateEditor"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_OutputPath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_InputPath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_ControlPath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_SQLstring"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_DatabaseEditor"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_XmlEditor"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_TextEditor"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Path"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_RefreshParameters"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_System_id"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Module_id"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Id"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_RefreshWindow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_VelocityPath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Results"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_ExecutionApp"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_StartModule"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_SetStartmodule"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Language"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_DBMS"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Database"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Driver"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_User"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Password"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Embed_id"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Template"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Running"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Error"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="g_Parameter"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
