#tag Class
Protected Class cls_introjs
	#tag Method, Flags = &h0, Description = 706F736974696F6E3A2030203D206C6566742C2031203D206D697474652C2032203D20726563687473
		Sub addStep(cntrl as WebControl, stepText as String)
		  stepControls.Append(cntrl)
		  
		  dim cntrl_id as string = cntrl.ControlID
		  dim subelement as string = "_inner"
		  
		  if cntrl isa WebContainer or cntrl isa WebPage or cntrl isa WebDialog or cntrl isa WebLabel then
		    subelement = ""
		  end if
		  
		  dim JS1 as string = "jQuery('#" + cntrl_id + subelement + "').addClass('intro_" + self.identifier + "');"
		  dim JS2 as string = "jQuery('#" + cntrl_id + subelement + "').attr('data-intro', '" + stepText + "');"
		  dim JS3 as string = "jQuery('#" + cntrl_id + subelement + "').attr('data-step', '" + stepControls.Ubound.ToText + "');"
		  
		  stepControls.Append(cntrl)
		  
		  Session.execute(JS1)
		  Session.execute(JS2)
		  Session.execute(JS3)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getOptions() As String
		  
		  dim optns() as string
		  
		  optns.Append(".setOption('doneLabel', '" + self.option_doneLabel + "')")
		  optns.Append(".setOption('skipLabel', '" + self.option_skipLabel + "')")
		  optns.Append(".setOption('nextLabel', '" + self.option_nextLabel + "')")
		  optns.Append(".setOption('prevLabel', '" + self.option_prevLabel + "')")
		  
		  optns.Append(".setOption('exitOnEsc', " + session.boolean_to_string(Self.option_exitOnEsc) + ")")
		  optns.Append(".setOption('exitOnOverlayClick', " + session.boolean_to_string(Self.option_exitOnOverlayClick) + ")")
		  optns.Append(".setOption('scrollToElement', " + session.boolean_to_string(Self.option_scrollToElement) + ")")
		  optns.Append(".setOption('showBullets', " + session.boolean_to_string(Self.option_showBullets) + ")")
		  optns.Append(".setOption('showButtons', " + session.boolean_to_string(Self.option_showButtons) + ")")
		  optns.Append(".setOption('showProgress', " + session.boolean_to_string(Self.option_showProgress) + ")")
		  optns.Append(".setOption('showStepNumbers', " + session.boolean_to_string(self.option_showStepNumbers) + ")")
		  
		  optns.Append(".setOption('hidePrev', true)")
		  optns.Append(".setOption('hideNext', true)")
		  optns.Append(".setOption('keyboardNavigation', true)")
		  // optns.Append(".setOption('tooltipPosition', '" + self.option_tooltipPosition + "')")
		  
		  Return(join(optns, " "))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub remove()
		  for i as integer = 0 to self.stepControls.Ubound
		    
		    dim cntrl as webcontrol = self.stepControls(i)
		    dim cntrl_id as string = cntrl.ControlID
		    
		    dim JS1 as string = "jQuery('#" + cntrl_id + "_inner').removeClass('intro_" + self.identifier + "');"
		    dim JS2 as string = "jQuery('#" + cntrl_id + "_inner').removeAttr('data-intro');"
		    session.execute(JS1 + " " + JS2)
		    
		  next
		  
		  redim stepControls(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub show()
		  
		  session.execute("introJs()" + getOptions + ".start();")
		  
		  
		  //introJs().setOption('showProgress', false).setOption('showBullets', true).start();
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		identifier As String
	#tag EndProperty

	#tag Property, Flags = &h0
		option_doneLabel As String = "Fertig"
	#tag EndProperty

	#tag Property, Flags = &h0
		option_exitOnEsc As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_exitOnOverlayClick As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_nextLabel As String = "Nächster Schritt"
	#tag EndProperty

	#tag Property, Flags = &h0
		option_prevLabel As String = "Voriger Schritt"
	#tag EndProperty

	#tag Property, Flags = &h0
		option_scrollToElement As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_showBullets As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_showButtons As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_showProgress As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_showStepNumbers As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		option_skipLabel As String = "Beenden"
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 706F736974696F6E3A2030203D206C6566742C2031203D206D697474652C2032203D20726563687473
		option_tooltipPosition As integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		stepControls() As webcontrol
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="identifier"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_nextLabel"
			Visible=true
			Group="Behavior"
			InitialValue="Nächster Schritt"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_prevLabel"
			Visible=true
			Group="Behavior"
			InitialValue="Voriger Schritt"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_skipLabel"
			Visible=true
			Group="Behavior"
			InitialValue="Beenden"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_doneLabel"
			Visible=true
			Group="Behavior"
			InitialValue="Fertig"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_tooltipPosition"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_exitOnEsc"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_exitOnOverlayClick"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_showStepNumbers"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_showButtons"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_showBullets"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_showProgress"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="option_scrollToElement"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
