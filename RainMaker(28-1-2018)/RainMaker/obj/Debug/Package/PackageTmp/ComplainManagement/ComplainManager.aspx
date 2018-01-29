<%@ Page Title="" Language="C#" MasterPageFile="~/MainForms_Site.Master" AutoEventWireup="true" CodeBehind="ComplainManager.aspx.cs" Inherits="RainMaker.ComplainManagement.ComplainManager" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    
<div class="container-fluid" runat="server">
    <div class="row">
     <main class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-2 col-sm-11 ml-sm-auto col-md-11 pt-3 customer content-area" role="main">

     <form runat="server" id="Form1" >
      <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
        <div class="customer">
           <form class="form-inline1 mt-2 mt-md-2 mb-md-3">
              <div class="container-fluid">

              <div class="row mb-md-3 mb-sm-3 border-box">

                 <div class="col-md-12 col-sm-12 col-lg-12">
                     <h4>Basic Searching Filters</h4>
                 </div>  

                 <div class="col-md-3 col-sm-12 col-lg-3">
                     
                     <asp:TextBox ID="tbSignupID" class="form-control mr-sm-2" placeholder="Sign Up ID" runat="server"></asp:TextBox>
    
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:TextBox ID="tbCMSID" class="form-control mr-sm-2" placeholder="CMS ID" runat="server"></asp:TextBox>

                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbTicketType" class="form-control" runat="server">
                         
                     </asp:DropDownList>
                
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbComplainStatus" class="form-control" runat="server">
                           
                     </asp:DropDownList>
                    
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:TextBox ID="tbTicketNumber" class="form-control mr-sm-2" placeholder="Ticket Number" runat="server"></asp:TextBox>
                    
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:TextBox ID="tbGPID" class="form-control mr-sm-2" placeholder="GPID" runat="server"></asp:TextBox>

                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbComplainType" class="form-control" runat="server">
                        
                     </asp:DropDownList>

                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbInitialStatement" class="form-control" runat="server">
              
                     </asp:DropDownList>

                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbCircuitOwner" class="form-control" runat="server">
                          
                     </asp:DropDownList>
            
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbCity" class="form-control" runat="server">
                           
                     </asp:DropDownList>
                      
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbCurrentDepartment" class="form-control" runat="server">
                          
                     </asp:DropDownList>
                     
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbLoggedBy" class="form-control" runat="server">
                            
                     </asp:DropDownList>
                      
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbReportedVia" class="form-control" runat="server">
                            
                     </asp:DropDownList>
                     
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbNode" class="form-control" runat="server">
                            
                     </asp:DropDownList>

                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbProblemDiagnosedAt" class="form-control" runat="server">
                           
                     </asp:DropDownList>
                    
                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <asp:DropDownList ID="cmbCaseCategory" class="form-control" runat="server">
                            
                     </asp:DropDownList>
            
                  </div>

                  <div class="col-md-6 col-sm-12 col-lg-6">

                     <asp:TextBox ID="tbCircuitName" class="form-control mr-sm-2" placeholder="Circuit Name" runat="server"></asp:TextBox>

                  </div>

                  <div class="col-md-6 col-sm-12 col-lg-6">
                    
                     <asp:DropDownList ID="cmbCustomerCode" class="form-control" runat="server">
                            
                     </asp:DropDownList> 

                  </div>
                  <div class="container-fluid">
                  <div class="row">
                  <div class="col-md-6 col-sm-12 col-lg-6">

                     <asp:DropDownList ID="cmbReasonofOutage" class="form-control" runat="server">
                          
                     </asp:DropDownList>  
        
                  </div>
                  </div>
                  </div>
                  

                  <div class="col-md-3 col-sm-12 col-lg-3">
                    
                     <telerik:RadDatePicker ID="dtFromDate" Runat="server" MinDate="1900-01-01" 
                                    SelectedDate="1900-01-01" 
                                    >
                                    <Calendar runat="server" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"></Calendar>

                                    <DateInput runat="server" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" SelectedDate="1900-01-01"></DateInput>

                                    <DatePopupButton runat="server"  ></DatePopupButton>
                     </telerik:RadDatePicker>
                     <span class="floating-label-date">From Date</span>

                  </div>

                  <div class="col-md-3 col-sm-12 col-lg-3">

                     <telerik:RadDatePicker ID="dtToDate" Runat="server" MinDate="1900-01-01" 
                                    SelectedDate="1900-01-01" 
                                    >
                                    <Calendar runat="server" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"></Calendar>

                                    <DateInput runat="server" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" SelectedDate="1900-01-01"></DateInput>

                                    <DatePopupButton ></DatePopupButton>
                     </telerik:RadDatePicker>
                     <span class="floating-label-date">To Date</span>

                  </div>

                  

                  

                  

                  <div class="col-md-12 col-sm-12 col-lg-12">
                     <h4>History Searching Filters</h4>
                 </div>  

                  <div class="col-md-4 col-sm-12 col-lg-4">

                     <asp:DropDownList ID="cmbForwardByDepartment" class="form-control" runat="server">
                        
                     </asp:DropDownList> 
                      
                  </div>

                  <div class="col-md-4 col-sm-12 col-lg-4">

                     <asp:DropDownList ID="cmbForwardToDepartment" class="form-control" runat="server">

                     </asp:DropDownList>
                      
                  </div>

                  <div class="col-md-6 col-sm-12 col-lg-4">

                     <asp:DropDownList ID="cmbForwardStatus" class="form-control" runat="server">
                        
                     </asp:DropDownList>
                      
                  </div>

            </div>

     </div>




           </form>
        </div>

        <div class="customer-buttons" runat="server">

            <div class="row" runat="server">
                <div class="col-xs-12" runat="server">
                    <div class="text-right" runat="server">

                         <asp:Button ID="btSearch" class="btn btn-primary" runat="server" Text="Search" 
                        onclick="btSearch_Click"  /> 
                        
                        <asp:Button ID="btnExport" class="btn btn-primary" runat="server" Text="Export to Excel" OnClick="btnExport_Click"></asp:Button>
                    
                        <asp:Button ID="btnClear" class="btn btn-primary" runat="server" Text="Clear" 
                             onclick="btnClear_Click"></asp:Button>

                        <asp:Button ID="btnBack" class="btn btn-primary" runat="server" Text="Back" 
                             onclick="btnBack_Click"></asp:Button> 

                        

                    </div>
                </div>
            </div>
        </div>

        

        <div class="customer-table">
           <form class="form-inline1 mt-2 mt-md-2 mb-md-3">
                
                

               <p class="pull-left">
               <label id="count">Total Count: <span class="badge"><asp:Label ID="lblTotalCount" autopostback="true" runat="server" Text="0"></asp:Label></span></label>
                             
               </p>
               <asp:label ID="lblNoRecordFound" text="No Record Found" runat="server" Visible="false" />

              <div class="text-right">
                  <div class="checkbox">
                    <label>
                        <asp:CheckBox ID="cbQCFormat" runat="server"  Text="QC Format" 
                          AutoPostBack="false"></asp:CheckBox>
                    </label>
                    <label>
                        <asp:CheckBox ID="cbSDFormat" runat="server" Text="SD Format" AutoPostBack="false"></asp:CheckBox>
                    </label>
                    
                  </div>
              </div>

              <div class="title-section white mt-md-3">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="pull-left">Complain Details</h4>
                    </div>
                </div>
              </div>

            <%--  <asp:UpdatePanel ID="UPPanel2" runat="server">
        <ContentTemplate>--%>
        
        

            
                           
                         <telerik:RadGrid ID="gvComplainCircuits" runat="server"  AllowSorting="True"
                            GridLines="None" Skin="Office2007" 
                             onitemcommand="gvComplainCircuits_ItemCommand"
                             OnNeedDataSource="gvComplainCircuits_NeedDataSource"
                             >
                            <ClientSettings>
                                <Selecting AllowRowSelect="True" />
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                            <MasterTableView  >
                                <CommandItemSettings ShowExportToExcelButton="true" ExportToPdfText="Export to Pdf" />
                                <Columns>
                                <telerik:GridTemplateColumn>
                        <ItemTemplate>
                            <asp:CheckBox ID="cb_Select" runat="server" ClientIDMode="AutoID"></asp:CheckBox>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                                    <telerik:GridButtonColumn CommandName="Complain Forward" HeaderText="Follow Up" Text="Follow Up"
                                        UniqueName="colfollow">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridButtonColumn CommandName="ComplainSolve" HeaderText="Solving" Text="Solving"
                                        UniqueName="colsolve">
                                    </telerik:GridButtonColumn>

                                    <telerik:GridButtonColumn CommandName="Complain Closure" 
                                        HeaderText="Complain Closure" Text="Complain Closure"
                                        UniqueName="ComplainClosuer">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridButtonColumn CommandName="View History" HeaderText="View History" Text="View History"
                                        UniqueName="colViewHistory">
                                    </telerik:GridButtonColumn>

                                    <telerik:GridButtonColumn CommandName="Ticket No" HeaderText="TicketNo" Text="TicketNo"
                                        UniqueName="colTicketNo" DataTextField="TicketNo">
                                    </telerik:GridButtonColumn>
                                   
                                </Columns>
                            </MasterTableView>
                            <PagerStyle Mode="NextPrev" />
                            <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" EnableImageSprites="True">
                            </HeaderContextMenu>
                        </telerik:RadGrid>
                  <%--  </ContentTemplate>
                    </asp:UpdatePanel>--%>

          </form>

        </div>

           </ContentTemplate>
    </asp:UpdatePanel>
        </form>
       
      </main>
      </div>
   </div>
   
</asp:Content>
