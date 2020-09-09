using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace Discuss.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/css/admin")
                .Include("~/Areas/Admin/Assets//AdminLTE/bootstrap/css/bootstrap.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//font-awesome/css/font-awesome.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//AdminLTE/dist/css/ionicons.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//AdminLTE/dist/css/AdminLTE.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//AdminLTE/dist/css/skins/_all-skins.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//BKTC/Styles/jquery-ui-BKTC.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//BKTC/Styles/ValueStyle.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//BKTC/Styles/BKTC.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//BKTC/Styles/FontStyle.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//GridGenerator/dataTables.bootstrap.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//GridGenerator/dataTables.responsive.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//GridGenerator/GridGenerator.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//CE/CE.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//Chosen/chosen.min.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//Select2/select2.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//Chosen/ChosenStyle.css", new CssRewriteUrlTransform())
                .Include("~/Areas/Admin/Assets//AdminLTE/dist/css/ConfigLTE.css", new CssRewriteUrlTransform())
            );
            bundles.Add(new ScriptBundle("~/js/admin").Include(
                "~/Areas/Admin/Assets//AdminLTE/bootstrap/js/bootstrap.min.js",
                "~/Areas/Admin/Assets//AdminLTE/plugins/slimScroll/jquery.slimscroll.min.js",
                "~/Areas/Admin/Assets//AdminLTE/plugins/fastclick/fastclick.js",
                "~/Areas/Admin/Assets//AdminLTE/dist/js/app.min.js",
                "~/Areas/Admin/Assets//AdminLTE/dist/js/demo.js",
                "~/Areas/Admin/Assets//GridGenerator/jquery.dataTables.min.js",
                "~/Areas/Admin/Assets//GridGenerator/dataTables.bootstrap.min.js",
                "~/Areas/Admin/Assets//GridGenerator/dataTables.responsive.js",
                "~/Areas/Admin/Assets//GridGenerator/jquery.twbsPagination.min.js",
                "~/Areas/Admin/Assets//CE/CE.js",
                "~/Areas/Admin/Assets//Chosen/chosen.jquery.min.js",
                "~/Areas/Admin/Assets//AdminSite/AdminSite.js",
                "~/Areas/Admin/Assets//BKTC/Scripts/validator.js",
                "~/Areas/Admin/Assets//loading/loadingoverlay.min.js",
                "~/Areas/Admin/Assets//BKTC/Scripts/BKTC.js",
                "~/Areas/Admin/Assets//Katex/contrib/auto-render.min.js",
                "~/Areas/Admin/Assets//Select2/select2.min.js",
                "~/Areas/Admin/Assets//BKTC/Scripts/LogaCombobox.js"
            ));
            BundleTable.EnableOptimizations = true;
        }
    }
}