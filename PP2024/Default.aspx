<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PP2024.Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">

            <button type="button" id="sidebarCollapse" class="btn btn-primary">
              <i class="fa fa-bars"></i>
              <span class="sr-only">Toggle Menu</span>
            </button>
            <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <h2 class="mb-4">Default</h2>
        
        <table>
            <tr>
                <td>
                    <asp:Label Text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" placeholder="Ingrese Nombre" />
                    
                    <%--<input type="text" class="form-control" name="Nombre" value="" required/>--%>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombre" ControlToValidate="txtNombre" runat="server" ErrorMessage="Debe ingresar nombre" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Apellido" ID="lblApellido" runat="server" />
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtApellido" runat="server" />
                </td>
                 <td>
                    <asp:RequiredFieldValidator ID="rfvApellido" ControlToValidate="txtApellido" runat="server" ErrorMessage="Debe ingresar apellido" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Edad" ID="lblEdad" runat="server" />
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtEdad" runat="server" />
                </td>
                <td>
                    <asp:RangeValidator ID="rvEdad" MinimumValue="18" MaximumValue="100" Type="Integer" ControlToValidate="txtEdad" runat="server" ErrorMessage="Debe ser mayor de 18" Text="*" ForeColor="Red"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ErrorMessage="Debe ingresar edad" ID="rfvEdad" ControlToValidate="txtEdad" runat="server" Text="*" ForeColor="Red"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblTexto" Font-Bold="true" ForeColor="Red" Text="" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button Text="Guardar" CssClass="btn btn-success" ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
	   </div>
</asp:Content>
