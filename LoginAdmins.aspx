<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="LoginAdmins.aspx.cs" Inherits="LoginAdmins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: none;
        }

        .BotonSesion {
            display: inline-block;
            border-radius: 4px;
            background-color: #660916;
            border: none;
            color: white;
            text-align: center;
            font-size: 12px;
            padding: 5px;
            width: 130px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 3px;
        }
        .auto-style2 {
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        

        <h4>
            <asp:Label ID="lblLogin" runat="server" Text="Inicie sesión como administrador"></asp:Label>
        </h4>
        

    </div>
    <div align="center">
        

        <p>
            &nbsp;</p>
        

    </div>
    <div align="center">
        

        <p>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblUser" runat="server" Text="Usuario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </p>
        

    </div>
    <div align="center">
        

        <p>
            <asp:Label ID="lblPass" runat="server" Text="Contraseña"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPass" Type="password" runat="server"></asp:TextBox>
        </p>
        

    </div>
    <div align="center" class="auto-style2">
        

        &nbsp;&nbsp;&nbsp;
        

        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="BotonSesion" OnClick="lblIngresar_Click" style="height: 31px"/>
        

    </div>
    <div align="center">
        

        <p>
            </p>
        

    </div>
    <div align="center">
        

        <p>
            <asp:Label ID="lblprueba" runat="server"></asp:Label>
        </p>
        

    </div>
    <div align="center">
        

        <p>
            &nbsp;</p>
        

    </div>
    <div align="center">
        

        <p>
            <asp:Label ID="lblAdvertencia" runat="server" Text="Este sitio permanece estrictamente vigilado en todo momento, por lo tanto, si usted <br>
                            no pertenece al cuerpo de administradores, abandone este sitio inmediatamente." ForeColor="#990000"></asp:Label>
        </p>
        

    </div>
    <div align="center">
        

        <p>
            &nbsp;</p>
        <strong>
        <asp:HyperLink ID="linkUtecPrincipal" runat="server" CssClass="auto-style1" ForeColor="#990000" NavigateUrl="https://www.utec.edu.sv">Pagina Principal UTEC</asp:HyperLink>
        </strong>
        

    </div>
    <div align="center">
        

        <p>
            &nbsp;</p>
        

    </div>
</asp:Content>

