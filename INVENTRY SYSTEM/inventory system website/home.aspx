<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<%@ Register 
    Assembly="AjaxControlToolkit" 
    Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><img src="tvs/products-dropdown_07-d-new (1).jpg" /></center>
<center> <script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            
            new AjaxControlToolkit.Slide("tvs/1.jpg","",""),
             new AjaxControlToolkit.Slide("tvs/2.jpg","",""),
              new AjaxControlToolkit.Slide("tvs/3.jpg","",""),
               new AjaxControlToolkit.Slide("tvs/4.jpg","",""),
                new AjaxControlToolkit.Slide("tvs/5.jpg","",""),
                 new AjaxControlToolkit.Slide("tvs/6.jpg","",""),
                  new AjaxControlToolkit.Slide("tvs/7.jpg","",""),
                   new AjaxControlToolkit.Slide("tvs/8.jpg","",""),
                    new AjaxControlToolkit.Slide("tvs/9.jpg","",""),
                     new AjaxControlToolkit.Slide("tvs/10.jpg","",""),
                      new AjaxControlToolkit.Slide("tvs/11.jpg","",""),
                       new AjaxControlToolkit.Slide("tvs/12.jpg","","")};
                      
            
        }
    </script>

    <div class="demoarea">
        <div class="demoheading">
            </div>
        <br />
        <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server" />
        <div style="text-align:center">
            <asp:Label runat="Server" ID="imageTitle" CssClass="slideTitle"/><br />
            <asp:Image ID="Image1" runat="server" 
                Height="300"
                width="300"
                Style="border: 1px solid black;width:auto" 
                ImageUrl="~/SlideShow/images/vol12d.jpg"
                AlternateText="Blue Hills image" />
            <asp:Label runat="server" ID="imageDescription" CssClass="slideDescription"></asp:Label><br /><br />
            <asp:Button runat="Server" ID="prevButton" Text="Prev" Font-Size="Larger" />
            <asp:Button runat="Server" ID="playButton" Text="Play" Font-Size="Larger" />
            <asp:Button runat="Server" ID="nextButton" Text="Next" Font-Size="Larger" />
            <ajaxToolkit:SlideShowExtender ID="slideshowextend1" runat="server" 
                TargetControlID="Image1"
                SlideShowServiceMethod="GetSlides" 
                AutoPlay="true" 
                ImageTitleLabelID="imageTitle"
                ImageDescriptionLabelID="imageDescription"
                NextButtonID="nextButton" 
                PlayButtonText="Play" 
                StopButtonText="Stop"
                PreviousButtonID="prevButton" 
                PlayButtonID="playButton" 
                Loop="true" />
        </div>
        </center>
    </div>
   
</asp:Content>

