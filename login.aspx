<%@ Page Title="Login - Wanderlust" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TourismWebsite.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container d-flex flex-column align-items-center justify-content-center py-5">
        
        <div class="logo-box-large mb-4 mt-5">
            <i class="bi bi-compass"></i>
        </div>
        
        <h1 class="main-heading fw-bold mb-2">Welcome Back</h1>
        <p class="text-muted mb-5 text-center">Sign in to continue your adventure</p>

        <div class="col-lg-4 col-md-6 w-100" style="max-width: 450px;">
            <div class="card signup-card p-4 p-md-5">
                
                <div class="form-group mb-3">
                    <label class="label-text">Email Address</label>
                    <div class="custom-input-group">
                        <i class="bi bi-envelope"></i>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="you@example.com"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group mb-3">
                    <label class="label-text">Password</label>
                    <div class="custom-input-group">
                        <i class="bi bi-lock"></i>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="••••••••"></asp:TextBox>
                        <i class="bi bi-eye ms-auto cursor-pointer text-muted"></i>
                    </div>
                </div>

                <div class="d-flex justify-content-between align-items-center mb-4 small">
                    <div class="form-check m-0 d-flex align-items-center">
                        <asp:CheckBox ID="chkRemember" runat="server" CssClass="me-2" />
                        <label class="text-muted mb-0">Remember me</label>
                    </div>
                    <a href="#" class="brand-link">Forgot password?</a>
                </div>

                <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn-wanderlust w-100 py-3 d-block text-center" OnClick="btnLogin_Click">
                    Sign In <i class="bi bi-arrow-right ms-2"></i>
                </asp:LinkButton>

                <p class="text-center mt-4 small mb-0">
                    Don't have an account? <a href="Signup.aspx" class="brand-link">Sign up</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>