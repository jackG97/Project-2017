<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Gaming_Reviews.aspx.cs" Inherits="Gaming_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Gaming_Reviews] WHERE ([Game_Name] = @Game_Name)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Game_Name" QueryStringField="Id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        <ItemTemplate>

            <div class="w3-third">

              <div id="J" class="w3-card w3-container"  style="min-height:460px;  text-align: center; font-size: 170%">
            

                  <h2><%# Eval("Game_Name") %></h2><br>

                  <img class="previewim" id="btn1" src="../Images/<%# Eval("Picture") %>"  alt="Image" style="width: 35%; margin-bottom: 10px; margin-left: 350px;"/> 
                      <br />

            
                  <p><%# Eval("Rating") %></p><br>
                  <p> Description: <%# Eval("Description") %> </p><br>
                  <p> Opinion:  <%# Eval("Opinion") %></p>



                   <div id="mybar" class = "w3-center w3-padding w3-theme" style ="width:5%">Progress</div>


                     <script>
                         src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" >
                             $(window).load(function () {
                             $("#button3").click(function () {
                                 $("#mybar").animate({width: '100%' });
                             });

                          
                             });
                     </script>
                  
  


              </div>

            <asp:HyperLink ID="button3" runat="server" ClientIDMode="Static" CssClass="btn btn-default">Animate</asp:HyperLink>

           </div>


        </ItemTemplate>
    

    </asp:Repeater>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Comments] WHERE ([User_Pic] = @User_Pic)">
        <SelectParameters>
            <asp:QueryStringParameter Name="User_Pic" QueryStringField="Id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


   

    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
           
    <p>By: <%# Eval("User_Name") %></p>
            
            <p>Review: <%# Eval("Comment") %></p><br>
           
        </ItemTemplate>

    </asp:Repeater>


    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Comment" OnClick="Button1_Click" />

  

</asp:Content>

