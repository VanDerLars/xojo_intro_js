#tag Class
Protected Class Session
Inherits WebSession
	#tag Method, Flags = &h0
		Function boolean_to_string(value as Boolean) As String
		  if value = true then return "true" else return "false"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub execute(script as String)
		  If Session = Nil Then
		    // buggy xojo shit
		  else
		    Session.ExecuteJavascript(script)
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = ErrorDialogCancel, Type = String, Dynamic = True, Default = \"Do Not Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogMessage, Type = String, Dynamic = True, Default = \"This application has encountered an error and cannot continue.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogQuestion, Type = String, Dynamic = True, Default = \"Please describe what you were doing right before the error occurred:", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogSubmit, Type = String, Dynamic = True, Default = \"Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYou, Type = String, Dynamic = True, Default = \"Thank You", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYouMessage, Type = String, Dynamic = True, Default = \"Your feedback helps us make improvements.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptInstructions, Type = String, Dynamic = True, Default = \"To turn Javascript on\x2C please refer to your browser settings window.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptMessage, Type = String, Dynamic = True, Default = \"Javascript must be enabled to access this page.", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
