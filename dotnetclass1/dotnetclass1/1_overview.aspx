<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="1_overview.aspx.cs" Inherits="dotnetclass1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <li class="nav-item active btn-primary rounded font-weight-bold">
                        <a class="nav-link" href="1_overview.aspx">Overview</a>
                      </li>

                      <li class="nav-item">
                        <a class="nav-link" href="2_basics.aspx">Basics</a>
                      </li>

                       <li class="nav-item">
                        <a class="nav-link" href="3_console.aspx">Console</a>
                      </li>

                        <li class="nav-item">
                        <a class="nav-link" href="4_OOP.aspx">OOP</a>
                      </li>

                        <li class="nav-item">
                        <a class="nav-link" href="5_winforms.aspx">WinForms</a>
                      </li>

                        <li class="nav-item">
                        <a class="nav-link" href="6_ADO.aspx">AOD</a>
                      </li>

                        <li class="nav-item">
                        <a class="nav-link" href="7_web.aspx">Web</a>
                      </li>

                        <li class="nav-item">
                        <a class="nav-link" href="8_lab.aspx">Lab</a>
                      </li>

                        <li class="nav-item">
                        <a class="nav-link" href="9_oldquestion.aspx">Old Question</a>
                      </li>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div class="p-3">
        <nav>
         <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-link active" id="nav-syllabus-tab" data-toggle="tab" href="#nav-syllabus" role="tab" aria-controls="nav-syllabus" aria-selected="true">Syllabus</a>
            <a class="nav-link" id="nav-question-tab" data-toggle="tab" href="#nav-question" role="tab" aria-controls="nav-question" aria-selected="false">Question</a>
            <a class="nav-link" id="nav-notes-tab" data-toggle="tab" href="#nav-notes" role="tab" aria-controls="nav-notes" aria-selected="false">Notes</a>
         </div>
        </nav>
   </div>
  

  <div class="tab-content" id="nav-tabContent">
       <div class="tab-pane fade show active" id="nav-syllabus" role="tabpanel" aria-labelledby="nav-syllabus-tab"> 
             <div class="row">

                  <div class="p-3 col-6">
                      <h6>1. Overview of VB.NET and C# .NET Language (4hr)</h6>
                       <ol>
                            <li>Introduction to C# and VB</li>
                            <li>Feature of object oriented programming</li>
                            <li>Scope of .NET technology</li>
                      </ol>
                    </div>

                  <div class="p-3 col-6">
                           <h6>1. Overview of VB.NET and C# .NET Language (4hr)</h6>
                            <ol>
                                <li>.NET</li>
                                <li>.NET Framework</li>
                                <li>Features of .Net Technology</li>
                                <li>.NET Framework Architecture</li>
                                <li>Compilation and Execution Process in .NET Framework</li>
                                <li>IDE</li>
                                <li>Introduction to c#</li>
                                <li>Differentiate between C# and VB.NET</li>
                                <li>features of OOP</li>
                                <li>Scope of .NET Technology</li>
                            </ol>
                         </div>

              </div>
        </div>
          
       <div class="tab-pane fade" id="nav-question" role="tabpanel" aria-labelledby="nav-question-tab">
            <div class="p-3">
                <ol>
                    <li>What is .NET Framework? Explain .NET framework with exmaple.[2+4]</li>
                    <li class="pb-3">Discuss .NET Framework in detail. [5]<span class="font-weight-bold">***</span></li>
                    
                    <li>What are the different features of .NET Technology? Discuss. [5] <span class="font-weight-bold">****</span></li>
                    <li>Why .NET Framework is needed? Explain in detail. [7] <span class="font-weight-bold">****</span></li>
                    <li class="pb-3">Why the use of .net Technology is growing day by day? Discuss. [5]<span class="font-weight-bold"> ***</span></li>
            
                    <li>Why CTS & CLS are used in Visual Studio .NET? Discuss. [5]<span class="font-weight-bold"> *****</span></li>
                    <li>What are the different functions of CLR with an e.g.? Discuss the concept of CLR in .NET with an e.g. [5][4] <span class="font-weight-bold">***</span></li>
                    <li>Short notes on: Common Language Runtime (CLR). [2.5]</li>
                    <li class="pb-3">Explain Just in Time Compilation (JIT) of managed code. [3]</li>
                    
                    <li>Write short notes on: Garbage [2.5]</li>
                    <li>Discuss the IDE of .NET Technology. [5]</li>
                    <li>Differentiate between VB and VB.NET.*[4]</li>
                </ol>
            </div>
       </div>

       <div class="tab-pane fade" id="nav-notes" role="tabpanel" aria-labelledby="nav-notes-tab">

       </div>

  </div>
   
</asp:Content>
