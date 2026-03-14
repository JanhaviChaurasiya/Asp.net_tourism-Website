<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="TourismWebsite.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@400;600&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" />
<link href="Content/Style.css" rel="stylesheet" />

        <div class="container signup-wrapper">
            <div class="row align-items-center min-vh-100">
                
                <div class="col-lg-6 px-lg-5">
                    <p class="text-orange fw-bold">Join Wanderlust</p>
                    <h1 class="display-4 fw-bold main-heading mb-4">Start Your Journey With Us</h1>
                    <p class="text-muted mb-5">Create an account to unlock exclusive benefits and make your travel planning easier.</p>
                    
                    <ul class="list-unstyled benefit-list">
                        <li><i class="bi bi-check-circle-fill"></i> Exclusive member-only deals</li>
                        <li><i class="bi bi-check-circle-fill"></i> Early access to new destinations</li>
                        <li><i class="bi bi-check-circle-fill"></i> Personalized travel recommendations</li>
                        <li><i class="bi bi-check-circle-fill"></i> Save your favorite trips</li>
                    </ul>
                </div>

                <div class="col-lg-5 offset-lg-1">
                    <div class="card signup-card p-4 p-md-5">
                        <h2 class="fw-bold mb-4 main-heading">Create Your Account</h2>
                        
                        <div class="form-group">
                            <asp:Label runat="server" Text="Full Name" CssClass="label-text"></asp:Label>
                            

                            <asp:RequiredFieldValidator
                                ID="rfvName"
                                runat="server"
                                ControlToValidate="txtFullName"
                                ErrorMessage="Name is required"
                                ForeColor="Red">
                                </asp:RequiredFieldValidator>

                            <div class="custom-input-group">
                                <i class="bi bi-person"></i>
                                <asp:TextBox ID="txtFullName" runat="server" placeholder="John Doe"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" Text="Email Address" CssClass="label-text"></asp:Label>

                            <asp:RegularExpressionValidator
                             ID="revEmail"
                             runat="server"
                             ControlToValidate="txtEmail"
                             ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                             ErrorMessage="Enter a valid email"
                             ForeColor="Red">
                            </asp:RegularExpressionValidator>

                            <div class="custom-input-group">
                                <i class="bi bi-envelope"></i>
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="you@example.com"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" Text="Password" CssClass="label-text"></asp:Label>
                            <asp:RequiredFieldValidator
                             ID="rfvPassword"
                             runat="server"
                             ControlToValidate="txtPassword"
                             ErrorMessage="Password is required"
                             ForeColor="Red">
                             </asp:RequiredFieldValidator>
                            <div class="custom-input-group">
                                <i class="bi bi-lock"></i>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="••••••••"></asp:TextBox>
                                <i class="bi bi-eye ms-auto cursor-pointer text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" Text="Confirm Password" CssClass="label-text"></asp:Label>
                            <asp:CompareValidator
                            ID="cvPassword"
                            runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ControlToCompare="txtPassword"
                            ErrorMessage="Passwords do not match"
                            ForeColor="Red">
                            </asp:CompareValidator>
                            <div class="custom-input-group">
                                <i class="bi bi-lock"></i>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="••••••••"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-check mb-4 small">
                            <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-check-input-custom" />
                            <label class="text-muted">I agree to the <a href="#" class="brand-link">Terms of Service</a> and <a href="#" class="brand-link">Privacy Policy</a></label>
                        </div>

                        <asp:LinkButton ID="btnSubmit" runat="server" CssClass="btn-wanderlust" OnClick="btnSubmit_Click">
                            Create Account <i class="bi bi-arrow-right ms-2"></i>
                        </asp:LinkButton>

                        <asp:ValidationSummary
                         ID="ValidationSummary1"
                         runat="server"
                         ForeColor="Red" />

                        <p class="text-center mt-4 small">
                            Already have an account? <a href="#" class="brand-link">Sign in</a>
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </asp:Content>