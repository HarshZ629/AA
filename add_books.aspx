<%@ Page Title="" Language="C#" MasterPageFile="~/Librarian/Libraian.Master" AutoEventWireup="true" CodeFile="add_books.aspx.cs" Inherits="eLib.Librarian.add_books1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Add New Books</strong>
                            </div>
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                        <form id="fo1" runat="server" novalidate="novalidate">

                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Title</label>
                                                <asp:TextBox ID="bookstitle" runat="server" class="form-control"  ></asp:TextBox>
                                            </div>        
                                            
                                               <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Image</label>
                                                <asp:FileUpload ID="f1" runat="server" class="form-control"  />
                                            </div>    
                                            
                                             <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Pdf</label>
                                                <asp:FileUpload ID="f2" runat="server" class="form-control"  />
                                            </div>  

                                             <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Video</label>
                                                <asp:FileUpload ID="f3" runat="server" class="form-control"  />
                                            </div>  

                                               <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Author Name</label>
                                                <asp:TextBox ID="authorname" runat="server" class="form-control"  ></asp:TextBox>
                                            </div>      

                                               <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Isbn</label>
                                                <asp:TextBox ID="isbn" runat="server" class="form-control"  ></asp:TextBox>
                                            </div>      

                                               <div class="form-group">
                                                <label for="" class="control-label mb-1">Books Qty</label>
                                                <asp:TextBox ID="qty" runat="server" class="form-control"  ></asp:TextBox>
                                            </div>      

                                                <div>
                                              <asp:Button  id="b1" class="btn btn-lg btn-info btn-block" runat="server" Text="Add New Books" OnClick="b1_Click" />
                                                </div>

                                            <div class="alert alert-success" id="msg" runat="server" style="margin-top: 10px; display:none" >
                                <strong>Your Books Added Sucessfully!</strong>
                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div> <!-- .card -->

                    </div>
</asp:Content>
