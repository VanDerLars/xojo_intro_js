#tag WebPage
Begin WebPage WebPage1
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   400
   HelpTag         =   ""
   HorizontalCenter=   0
   ImplicitInstance=   True
   Index           =   -2147483648
   IsImplicitInstance=   False
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   MinHeight       =   400
   MinWidth        =   600
   Style           =   "None"
   TabOrder        =   0
   Title           =   "Untitled"
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   600
   ZIndex          =   1
   _DeclareLineRendered=   False
   _HorizontalPercent=   0.0
   _ImplicitInstance=   False
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebButton start
      AutoDisable     =   False
      Caption         =   "Start Intro"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      Style           =   "0"
      TabOrder        =   0
      Top             =   20
      VerticalCenter  =   0
      Visible         =   True
      Width           =   100
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebLabel first
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      Style           =   "0"
      TabOrder        =   1
      Text            =   "First part"
      TextAlign       =   0
      Top             =   81
      VerticalCenter  =   0
      Visible         =   True
      Width           =   100
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebLabel second
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      Style           =   "0"
      TabOrder        =   1
      Text            =   "Second part"
      TextAlign       =   0
      Top             =   115
      VerticalCenter  =   0
      Visible         =   True
      Width           =   100
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin ContainerControl1 third
      Cursor          =   0
      Enabled         =   True
      Height          =   86
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      ScrollbarsVisible=   0
      Style           =   "0"
      TabOrder        =   2
      Top             =   149
      VerticalCenter  =   0
      Visible         =   True
      Width           =   300
      ZIndex          =   1
      _DeclareLineRendered=   False
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _ShownEventFired=   False
      _VerticalPercent=   0.0
   End
   Begin cls_introjs cls_introjs1
      Height          =   "32"
      identifier      =   ""
      Index           =   -2147483648
      Left            =   "1.0e+2"
      LockedInPosition=   False
      option_doneLabel=   "Fertig"
      option_exitOnEsc=   True
      option_exitOnOverlayClick=   True
      option_nextLabel=   "Nächster Schritt"
      option_prevLabel=   "Voriger Schritt"
      option_scrollToElement=   True
      option_showBullets=   True
      option_showButtons=   True
      option_showProgress=   True
      option_showStepNumbers=   True
      option_skipLabel=   "Beenden"
      option_tooltipPosition=   0
      Scope           =   2
      Style           =   "0"
      TabOrder        =   "-1"
      Top             =   "1.0e+2"
      Width           =   "32"
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  self.setIntroJS
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub setIntroJS()
		  Var tut_cntrl() As webcontrol
		  Dim tut_texte() As String
		  
		  
		  tut_cntrl.Append(Self)
		  tut_texte.Append("It starts!")
		  
		  tut_cntrl.Append(Self.start)
		  tut_texte.Append("This was the start button you already clicked")
		  
		  
		  tut_cntrl.Append(Self.first)
		  tut_texte.Append("This is the first label")
		  
		  
		  tut_cntrl.Append(Self.second)
		  tut_texte.Append("This is the second label")
		  
		  
		  tut_cntrl.Append(Self.third)
		  tut_texte.Append("You can even use Container Controls here")
		  
		  
		  tut_cntrl.Append(Self)
		  tut_texte.Append("<h1>This is the entire Page.</h1> Nice huh, you can use <i>html</i>? ")
		  
		  For i As Integer = 0 To tut_cntrl.Ubound
		    Self.cls_introjs1.addStep(tut_cntrl(i), tut_texte(i))
		  Next
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events start
	#tag Event
		Sub Action()
		  
		  self.cls_introjs1.show
		End Sub
	#tag EndEvent
#tag EndEvents
