#pragma checksum "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\Produc\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cccd672bf97237a78adb8289f2a98263cc1876a3"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Produc_List), @"mvc.1.0.view", @"/Views/Produc/List.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\_ViewImports.cshtml"
using Marg_UserInterface;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\_ViewImports.cshtml"
using Marg_UserInterface.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cccd672bf97237a78adb8289f2a98263cc1876a3", @"/Views/Produc/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"da71718643f114cca7a8f4efeba0612c53fc6d37", @"/Views/_ViewImports.cshtml")]
    public class Views_Produc_List : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Login>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\Produc\List.cshtml"
  
    ViewData["Title"] = "Produc List";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"text-center\">\r\n    \r\n    <p>Sicil: ");
#nullable restore
#line 9 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\Produc\List.cshtml"
         Write(Model[0].Sicil);

#line default
#line hidden
#nullable disable
            WriteLiteral(" Şifre:");
#nullable restore
#line 9 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\Produc\List.cshtml"
                               Write(Model[0].Sifre);

#line default
#line hidden
#nullable disable
            WriteLiteral(" </p>\r\n    <p>Sicil: ");
#nullable restore
#line 10 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\Produc\List.cshtml"
         Write(Model[1].Sicil);

#line default
#line hidden
#nullable disable
            WriteLiteral(" Şifre:");
#nullable restore
#line 10 "C:\Users\MAYıldırım\source\repos\MargApp\Marg_UserInterface\Views\Produc\List.cshtml"
                               Write(Model[1].Sifre);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n</div>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Login>> Html { get; private set; }
    }
}
#pragma warning restore 1591
