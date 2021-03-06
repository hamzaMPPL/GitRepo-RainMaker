﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainForms_Site.Master" AutoEventWireup="true" CodeBehind="SearchCircuits.aspx.cs" Inherits="RainMaker.ComplainManagement.SearchCircuits" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid" runat="server">
    <div class="row">
         <main class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-2 col-sm-11 ml-sm-auto col-md-11 pt-3 customer content-area" role="main">
          <form id="Form1" runat="server">
          <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
            <div class="customer">
               <form class="form-inline1 mt-2 mt-md-2 mb-md-3">
                  <div class="container-fluid">

                   
                  <div class="row mb-md-3 mb-sm-3 border-box">

                     <div class="col-md-3 col-sm-12 col-lg-3 right-border">

                        <asp:DropDownList ID="cmbComplainAt" class="form-control" runat="server" AutoPostBack="True">
                            
                        </asp:DropDownList>

                        <asp:DropDownList ID="cmbTicketType" OnSelectedIndexChanged="cmbTicketType_SelectedIndexChanged" AutoPostBack="True" class="form-control" runat="server">
                          
                        </asp:DropDownList>

                     </div>

                     <div class="col-md-9 col-sm-12 col-lg-9 normal-top_padding">


                     <asp:Panel ID="pnlSingleSearch" runat="server" Enabled="true">
                         <div class="col-md-3 col-sm-12 col-lg-3">
                                                 

                            <asp:TextBox ID="tbSignupID" AutoPostBack="True"  OnTextChanged="btSearch_Click" class="form-control mr-sm-2" placeholder="Sign Up ID" runat="server"></asp:TextBox>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:TextBox ID="tbCMSID" AutoPostBack="True" OnTextChanged="btSearch_Click" class="form-control mr-sm-2" placeholder="CMS ID" runat="server"></asp:TextBox>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:TextBox ID="tbGPID" class="form-control mr-sm-2" placeholder="GPID" runat="server"></asp:TextBox>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:TextBox ID="tbCustomerName" class="form-control mr-sm-2" placeholder="Customer Name" runat="server"></asp:TextBox>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:DropDownList ID="cmbServiceUnit" class="form-control" runat="server">
                               
                            </asp:DropDownList>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:TextBox ID="tbIPAddress" class="form-control mr-sm-2" placeholder="IP Address" runat="server"></asp:TextBox>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:TextBox ID="tbCPEIPAddress" class="form-control mr-sm-2" placeholder="CPE IP Address" runat="server"></asp:TextBox>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3">

                            <asp:DropDownList ID="cmbCity1" class="form-control" runat="server">
                               
                            </asp:DropDownList>
                            
                         </div>
                         </asp:Panel>

                     </div>

                 </div>

                 <div class="row mb-md-3 mb-sm-3 border-box">
                     <div class="col-md-3 col-sm-12 col-lg-3 right-border">

                        <asp:DropDownList ID="cmbStatus" class="form-control" runat="server">
                                
                        </asp:DropDownList>

                        <asp:DropDownList ID="cmbInfra" class="form-control" runat="server">
                                
                        </asp:DropDownList>

                     </div>

                     <div class="col-md-9 col-sm-12 col-lg-9">
                     
                         <asp:Panel ID="pnlMultipleSearch" runat="server" Enabled="false">

                         <div class="col-md-3 col-sm-12 col-lg-3 normal-top_padding">

                            <asp:DropDownList ID="cmbRegion"  class="form-control" runat="server">
                               
                            </asp:DropDownList>

                            <asp:DropDownList ID="cmbCustomerCode"  class="form-control" runat="server">
                               
                            </asp:DropDownList>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3 normal-top_padding">

                            <asp:DropDownList ID="cmbNode"  class="form-control" runat="server">
                                
                            </asp:DropDownList>

                            <asp:DropDownList ID="cmbCity2" class="form-control" runat="server">
                               
                            </asp:DropDownList>

                         </div>

                         <div class="col-md-3 col-sm-12 col-lg-3 normal-top_padding">

                            <asp:DropDownList ID="cmbRing"  class="form-control" runat="server">
                                
                            </asp:DropDownList>

                         </div>
                          
                         
                          </asp:Panel>

                         
                     </div>
                    
                  </div>
                </div>
               </form>
            </div>

            <div class="customer-buttons">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="text-right">

                            <asp:Button ID="btSearch" OnClick="btSearch_Click"  class="btn btn-primary" runat="server" Text="Search"></asp:Button>

                            <asp:Button ID="btMultipleCircuitsComplain" runat="server" Text="Multiple Circuits Complain" Visible = "false"
                    AutoPostBack = "true" onclick="btMultipleCircuitsComplain_Click"></asp:Button>

                            <asp:Button ID="btClear" class="btn btn-primary" runat="server" Text="Clear"></asp:Button>

                            <asp:Button ID="btClose" class="btn btn-primary" runat="server" Text="Back"></asp:Button>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                   <p class="pull-left"><label id="count">Total Count: <span class="badge"><asp:Label ID="lblTotalCount" runat="server" Text="0"></asp:Label></span></label></p>
                    <div class="col-md-4 col-sm-12 col-lg-4">
                   <p class="pull-left"><asp:Label ID="lblAlreadyExist"   runat="server" Text="already exist"></asp:Label></p>
                   </div>
                   <asp:Button ID="btnViewDetails" runat="server" OnClick="btnviewDetails_Click" Text="View Details"></asp:Button>
               </div>
            </div>
            

            <div class="customer-table">
               

                  <div class="title-section white mt-md-3">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="pull-left">Complain Details</h4>
                        </div>
                    </div>
                  </div>

                  <form  class="form-inline1 mt-2 mt-md-2 mb-md-3">
                 <asp:UpdatePanel ID="UPPanel2" runat="server">
        <ContentTemplate>
        <div class="table-responsive">
                        <telerik:RadGrid ID="gvActiveCircuits" runat="server" AllowPaging="True" AllowSorting="True"
                            GridLines="None" Skin="Office2007" onitemcommand="gvActiveCircuits_ItemCommand" 
                            >
                            <ClientSettings>
                                <Selecting AllowRowSelect="True" />
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                            <MasterTableView>
                                <CommandItemSettings ExportToPdfText="Export to Pdf" />
                                <Columns>
                                    <telerik:GridButtonColumn CommandName="Complain" HeaderText="Complain" Text="Complain"
                                        UniqueName="colComp">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridButtonColumn CommandName="ComplainHistory" HeaderText="ComplainHistory" Text="ComplainHistory"
                                        UniqueName="colHistoryView">
                                    </telerik:GridButtonColumn><telerik:GridButtonColumn CommandName="StatusHistory" HeaderText="StatusHistory" Text="StatusHistory"
                                        UniqueName="column3">
                                    </telerik:GridButtonColumn>
                                </Columns>
                            </MasterTableView>
                            <PagerStyle Mode="NextPrev" />
                            <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" EnableImageSprites="True">
                            </HeaderContextMenu>
                        </telerik:RadGrid>
                    </div>
                    </ContentTemplate>
                    </asp:UpdatePanel>
    
   
                  

              </form>

            </div>

            </ContentTemplate>
            </asp:UpdatePanel>
            </form>

          </main>
      </div>
</div>

</asp:Content>
