require 'rubygems'
require 'bundler/setup'
require 'rack'
require 'rack-rewrite'


# The project root directory
$root = ::File.dirname(__FILE__)

# Common Rack Middleware
use Rack::ShowStatus      # Nice looking 404s and other messages
use Rack::ShowExceptions  # Nice looking errors

use Rack::Rewrite do

r301 %r{^/post/The-surprising-science-of-motivation-by-Dan-Pink.aspx?$}, '/blog/the-surprising-science-of-motivation-by-dan-pink'
    r301 %r{^/post/Building-a-new-application-Introduction.aspx?$}, '/blog/building-a-new-application-introduction'
    r301 %r{^/post/tight-deadlines.aspx?$}, '/blog/tight-deadlines'
    r301 %r{^/post/no-such-file-to-load-cucumberrailsactive_record-(LoadError).aspx?$}, '/blog/no-such-file-to-load-cucumberrailsactive_record-(loaderror)'
    r301 %r{^/post/Buying-games-on-Steam.aspx?$}, '/blog/buying-games-on-steam'
    r301 %r{^/post/AlternativeToNet-review.aspx?$}, '/blog/alternativetonet-review'
    r301 %r{^/post/Excellent-post-by-Uncle-Bob.aspx?$}, '/blog/excellent-post-by-uncle-bob'
    r301 %r{^/post/SEO-tips-I-have-used-to-improve-my-search-engine-visibility.aspx?$}, '/blog/seo-tips-i-have-used-to-improve-my-search-engine-visibility'
    r301 %r{^/post/SQL-Server-Compact-is-not-intended-for-ASPNET-development.aspx?$}, '/blog/sql-server-compact-is-not-intended-for-aspnet-development'
    r301 %r{^/post/Select-a-number-of-rows-based-on-a-parameter-using-T-SQL.aspx?$}, '/blog/select-a-number-of-rows-based-on-a-parameter-using-t-sql'
    r301 %r{^/post/Functional-programming-Starting-to-learn-Clojure.aspx?$}, '/blog/functional-programming-starting-to-learn-clojure'
    r301 %r{^/post/Bookmarks-of-the-week-2.aspx?$}, '/blog/bookmarks-of-the-week-2'
    r301 %r{^/post/Creating-a-CSV-file-and-dealing-with-special-characters.aspx?$}, '/blog/creating-a-csv-file-and-dealing-with-special-characters'
    r301 %r{^/post/ReadOnlyCollection3cT3e.aspx?$}, '/blog/readonlycollection3ct3e'
    r301 %r{^/post/My-TeamCity-testimonial.aspx?$}, '/blog/my-teamcity-testimonial'
    r301 %r{^/post/find-in-php-files.aspx?$}, '/blog/find-in-php-files'
    r301 %r{^/post/My-opinion-about-Duct-Tape-Programmer.aspx?$}, '/blog/my-opinion-about-duct-tape-programmer'
    r301 %r{^/post/Bookmarks-of-the-week-1.aspx?$}, '/blog/bookmarks-of-the-week-1'
    r301 %r{^/post/Exploring-Anonymous-Methods.aspx?$}, '/blog/exploring-anonymous-methods'
    r301 %r{^/post/How-I-am-becoming-a-better-developer-in-6-months.aspx?$}, '/blog/how-i-am-becoming-a-better-developer-in-6-months'
    r301 %r{^/post/WebConfig-to-AppConfig-and-Resharpers-TestRunner.aspx?$}, '/blog/webconfig-to-appconfig-and-resharpers-testrunner'
    r301 %r{^/post/Ohhh-thats-why-I-should-make-a-TestRepository.aspx?$}, '/blog/ohhh-thats-why-i-should-make-a-testrepository'
    r301 %r{^/post/Rise-of-Ruby.aspx?$}, '/blog/rise-of-ruby'
    r301 %r{^/post/ViVim-30-days-Day-1.aspx?$}, '/blog/vivim-30-days-day-1'
    r301 %r{^/post/Setting-up-a-basic-continuous-integration-server-with-CruiseControlNET.aspx?$}, '/blog/setting-up-a-basic-continuous-integration-server-with-cruisecontrolnet'
    r301 %r{^/post/parseFloat(e28098e28099)-3d3d-NaN.aspx?$}, '/blog/parsefloat(e28098e28099)-3d3d-nan'
    r301 %r{^/post/Setting-up-a-basic-continuous-integration-server-with-TeamCity.aspx?$}, '/blog/setting-up-a-basic-continuous-integration-server-with-teamcity'
    r301 %r{^/post/I-need-advices-to-create-my-home-office.aspx?$}, '/blog/i-need-advices-to-create-my-home-office'
    r301 %r{^/post/var-keyword-(or-Implicitly-Typed-Local-Variables).aspx?$}, '/blog/var-keyword-(or-implicitly-typed-local-variables)'
    r301 %r{^/post/Strong-naming-an-assembly-in-NET.aspx?$}, '/blog/strong-naming-an-assembly-in-net'
    r301 %r{^/post/ScummVM.aspx?$}, '/blog/scummvm'
    r301 %r{^/post/Windows-Forms-Owner-and-Owned-Forms.aspx?$}, '/blog/windows-forms-owner-and-owned-forms'
    r301 %r{^/post/jquery-proxy.aspx?$}, '/blog/jquery-proxy'
    r301 %r{^/post/Mix10.aspx?$}, '/blog/mix10'
    r301 %r{^/post/Getting-started-with-NHibernate.aspx?$}, '/blog/getting-started-with-nhibernate'
    r301 %r{^/post/Visual-Studio-20052008-Reference-Path.aspx?$}, '/blog/visual-studio-20052008-reference-path'
    r301 %r{^/post/Thank-you!.aspx?$}, '/blog/thank-you!'
    r301 %r{^/post/Getting-started-with-NHibernate.aspx?$}, '/blog/getting-started-with-nhibernate'
    r301 %r{^/post/My-solution-node-does-not-appear-in-Visual-Studio-20052008.aspx?$}, '/blog/my-solution-node-does-not-appear-in-visual-studio-20052008'
    r301 %r{^/post/Becoming-a-better-developer-Third-update.aspx?$}, '/blog/becoming-a-better-developer-third-update'
    r301 %r{^/post/ActivatorCreateInstance-problem.aspx?$}, '/blog/activatorcreateinstance-problem'
    r301 %r{^/post/Why-unit-testing.aspx?$}, '/blog/why-unit-testing'
    r301 %r{^/post/viVim-30-days-Conclusion.aspx?$}, '/blog/vivim-30-days-conclusion'
    r301 %r{^/post/How-to-test-if-someone-subscribed-to-an-event-with-Rhino-Mocks.aspx?$}, '/blog/how-to-test-if-someone-subscribed-to-an-event-with-rhino-mocks'
    r301 %r{^/post/Excellent-Foundations-of-Programming.aspx?$}, '/blog/excellent-foundations-of-programming'
    r301 %r{^/post/The-install-location-for-prerequisites-has-not-been-set-to-component-vendors-web-site-and-the-file-dotNetFx35setupexe-in-item-MicrosoftNetFramework35SP1-cannot-be-located-on-disk.aspx?$}, '/blog/the-install-location-for-prerequisites-has-not-been-set-to-component-vendors-web-site-and-the-file-dotnetfx35setupexe-in-item-microsoftnetframework35sp1-cannot-be-located-on-disk'
    r301 %r{^/post/Build-failed-due-to-validation-errors.aspx?$}, '/blog/build-failed-due-to-validation-errors'
    r301 %r{^/post/ASPNET-MVC-Request-Handling-Poster.aspx?$}, '/blog/aspnet-mvc-request-handling-poster'
    r301 %r{^/post/Resetting-TeamCity-Password.aspx?$}, '/blog/resetting-teamcity-password'
    r301 %r{^/post/Photosynth-and-Seadragon.aspx?$}, '/blog/photosynth-and-seadragon'
    r301 %r{^/post/Setting-up-a-Subversion-server-(using-svnserve).aspx?$}, '/blog/setting-up-a-subversion-server-(using-svnserve)'
    r301 %r{^/post/Vim-30-days-Day-4.aspx?$}, '/blog/vim-30-days-day-4'
    r301 %r{^/post/Datasource-files-in-my-Web-Service-generated-files.aspx?$}, '/blog/datasource-files-in-my-web-service-generated-files'
    r301 %r{^/post/Law-of-Demeter.aspx?$}, '/blog/law-of-demeter'
    r301 %r{^/post/Should-I-learn-Eiffel.aspx?$}, '/blog/should-i-learn-eiffel'
    r301 %r{^/post/Linode-is-my-new-VPS.aspx?$}, '/blog/linode-is-my-new-vps'
    r301 %r{^/post/Top-5-ReSharpers-shortcuts-you-need-to-know-at-first.aspx?$}, '/blog/top-5-resharpers-shortcuts-you-need-to-know-at-first'
    r301 %r{^/post/Setting-up-CruiseControlNet-screencast.aspx?$}, '/blog/setting-up-cruisecontrolnet-screencast'
    r301 %r{^/post/hello-world-from-derek.aspx?$}, '/blog/hello-world-from-derek'
    r301 %r{^/post/Tower-Defense-Games-Collection.aspx?$}, '/blog/tower-defense-games-collection'
    r301 %r{^/post/Where-did-my-strongly-typed-action-link-has-gone-in-ASPNET-MVC-Beta.aspx?$}, '/blog/where-did-my-strongly-typed-action-link-has-gone-in-aspnet-mvc-beta'
    r301 %r{^/post/ASPNET-MVC-Beta.aspx?$}, '/blog/aspnet-mvc-beta'
    r301 %r{^/post/AltNET-Podcast.aspx?$}, '/blog/altnet-podcast'
    r301 %r{^/post/SourceSafe-on-VPN.aspx?$}, '/blog/sourcesafe-on-vpn'
    r301 %r{^/post/The-importance-of-database-versioning.aspx?$}, '/blog/the-importance-of-database-versioning'
    r301 %r{^/post/Currently-reading-JQuery-in-Action.aspx?$}, '/blog/currently-reading-jquery-in-action'
    r301 %r{^/post/Reality-of-type-sharing-in-WCF.aspx?$}, '/blog/reality-of-type-sharing-in-wcf'
    r301 %r{^/post/Getting-started-with-Selenium-IDE-Part-2.aspx?$}, '/blog/getting-started-with-selenium-ide-part-2'
    r301 %r{^/post/Converting-a-test-to-Rhino-Mocks-35-and-the-problem-I-had.aspx?$}, '/blog/converting-a-test-to-rhino-mocks-35-and-the-problem-i-had'
    r301 %r{^/post/ViVim-30-days-Day-3.aspx?$}, '/blog/vivim-30-days-day-3'
    r301 %r{^/post/Setting-up-a-the-build-file-for-a-new-application.aspx?$}, '/blog/setting-up-a-the-build-file-for-a-new-application'
    r301 %r{^/post/Subtle-deadly-bug.aspx?$}, '/blog/subtle-deadly-bug'
    r301 %r{^/post/Failed-to-generate-a-user-instance-of-SQL-Server-due-to-a-failure-in-starting-the-process-for-the-user-instance-The-connection-will-be-closed.aspx?$}, '/blog/failed-to-generate-a-user-instance-of-sql-server-due-to-a-failure-in-starting-the-process-for-the-user-instance-the-connection-will-be-closed'
    r301 %r{^/post/APPSUMO-and-The-Bad-Ass-Developer-Bundle.aspx?$}, '/blog/appsumo-and-the-bad-ass-developer-bundle'
    r301 %r{^/post/I-enjoy-keeping-a-blog-but.aspx?$}, '/blog/i-enjoy-keeping-a-blog-but'
    r301 %r{^/post/SystemDataLinqChangeConflictException-Row-not-found-or-changed.aspx?$}, '/blog/systemdatalinqchangeconflictexception-row-not-found-or-changed'
    r301 %r{^/post/ResponseRedirect-in-a-page-callback.aspx?$}, '/blog/responseredirect-in-a-page-callback'
    r301 %r{^/post/Book-review-Head-First-Design-Patterns.aspx?$}, '/blog/book-review-head-first-design-patterns'
    r301 %r{^/post/The-problem-with-Constant-and-Versioning.aspx?$}, '/blog/the-problem-with-constant-and-versioning'
    r301 %r{^/post/Getting-started-with-Selenium-IDE-Part-1.aspx?$}, '/blog/getting-started-with-selenium-ide-part-1'
    r301 %r{^/post/wikidotcom-Personal-knowledge-base.aspx?$}, '/blog/wikidotcom-personal-knowledge-base'
    r301 %r{^/post/Congratulation-to-me!.aspx?$}, '/blog/congratulation-to-me!'
    r301 %r{^/post/Currently-reading-Dont-make-me-think.aspx?$}, '/blog/currently-reading-dont-make-me-think'
    r301 %r{^/post/Quick-Start-with-ASPNET-MVC-Interim-Source-Code.aspx?$}, '/blog/quick-start-with-aspnet-mvc-interim-source-code'
    r301 %r{^/post/ViVim-30-days-Day-2.aspx?$}, '/blog/vivim-30-days-day-2'
    r301 %r{^/post/NDepend-Small-review.aspx?$}, '/blog/ndepend-small-review'
    r301 %r{^/post/I-will-use-Windows-Live-Writer.aspx?$}, '/blog/i-will-use-windows-live-writer'
    r301 %r{^/post/Moving-to-an-Agile-Team.aspx?$}, '/blog/moving-to-an-agile-team'
    r301 %r{^/post/Visual-Studio-20052008-Adding-projects-to-your-solution.aspx?$}, '/blog/visual-studio-20052008-adding-projects-to-your-solution'
    r301 %r{^/post/My-first-continuous-integration-server-is-complete-!.aspx?$}, '/blog/my-first-continuous-integration-server-is-complete-!'
    r301 %r{^/post/Unit-Testing-LinqToSql-and-CreateDatabase.aspx?$}, '/blog/unit-testing-linqtosql-and-createdatabase'
    r301 %r{^/post/2009-Retrospective.aspx?$}, '/blog/2009-retrospective'
    r301 %r{^/post/Mind-shift.aspx?$}, '/blog/mind-shift'
    r301 %r{^/post/Difference-between-HTM-and-HTML-extension.aspx?$}, '/blog/difference-between-htm-and-html-extension'
    r301 %r{^/post/Back-from-my-2-weeks-vacation.aspx?$}, '/blog/back-from-my-2-weeks-vacation'
    r301 %r{^/post/Revisited-Going-back-to-ASPNET-WebForms-and-a-lot-of-pain-with-the-CheckBoxList.aspx?$}, '/blog/revisited-going-back-to-aspnet-webforms-and-a-lot-of-pain-with-the-checkboxlist'
    r301 %r{^/post/My-experience-as-a-remote-worker.aspx?$}, '/blog/my-experience-as-a-remote-worker'
    r301 %r{^/post/NHibernate-SaveOrUpdate-does-nothing.aspx?$}, '/blog/nhibernate-saveorupdate-does-nothing'
    r301 %r{^/post/Top-5-ReSharpers-shortcuts-you-need-to-know-after-some-time.aspx?$}, '/blog/top-5-resharpers-shortcuts-you-need-to-know-after-some-time'
    r301 %r{^/post/The-Last-Lecture-by-Randy-Pausch.aspx?$}, '/blog/the-last-lecture-by-randy-pausch'
    r301 %r{^/post/Setting-expectations-on-properties-with-Rhino-Mocks.aspx?$}, '/blog/setting-expectations-on-properties-with-rhino-mocks'
    r301 %r{^/post/Screencast-goodness-Monorail-ExtJS-and-NET-35.aspx?$}, '/blog/screencast-goodness-monorail-extjs-and-net-35'
    r301 %r{^/post/LeechBlock-and-Invisibility-Cloak.aspx?$}, '/blog/leechblock-and-invisibility-cloak'
    r301 %r{^/post/Cannot-have-multiple-items-selected-in-a-DropDownList.aspx?$}, '/blog/cannot-have-multiple-items-selected-in-a-dropdownlist'
    r301 %r{^/post/Screencast-and-my-opinion-about-TypeMock.aspx?$}, '/blog/screencast-and-my-opinion-about-typemock'
    r301 %r{^/post/Becoming-a-better-developer-Where-am-I.aspx?$}, '/blog/becoming-a-better-developer-where-am-i'
    r301 %r{^/post/Finally-the-time-has-come.aspx?$}, '/blog/finally-the-time-has-come'
    r301 %r{^/post/Congratulation-to-me!.aspx?$}, '/blog/congratulation-to-me!'
    r301 %r{^/post/Learning-Rails-SanitizeHelper.aspx?$}, '/blog/learning-rails-sanitizehelper'
    r301 %r{^/post/ProcessGetProcesses-common-errors.aspx?$}, '/blog/processgetprocesses-common-errors'
    r301 %r{^/post/Adding-a-MIME-map-in-IIS.aspx?$}, '/blog/adding-a-mime-map-in-iis'
    r301 %r{^/post/Becoming-a-better-developer-Second-Update.aspx?$}, '/blog/becoming-a-better-developer-second-update'
    r301 %r{^/post/Everything-you-need-to-start-writing-Windows-Services.aspx?$}, '/blog/everything-you-need-to-start-writing-windows-services'
    r301 %r{^/post/Announcing-a-review-of-e2809cPragmatic-Thinking-Learninge2809d-and-probably-no-interesting-content-in-this-post.aspx?$}, '/blog/announcing-a-review-of-e2809cpragmatic-thinking-learninge2809d-and-probably-no-interesting-content-in-this-post'
    r301 %r{^/post/Steve-Jobs-and-his-thoughts-on-Flash.aspx?$}, '/blog/steve-jobs-and-his-thoughts-on-flash'
    r301 %r{^/post/2010-goals.aspx?$}, '/blog/2010-goals'
    r301 %r{^/post/Visual-Studio-2008-WCF-Templates.aspx?$}, '/blog/visual-studio-2008-wcf-templates'
    r301 %r{^/post/Problem-Downloading-files-using-GeckoFX-and-XULRunner.aspx?$}, '/blog/problem-downloading-files-using-geckofx-and-xulrunner'
    r301 %r{^/post/Set-a-value-on-an-Textbox-with-his-TextMode-set-to-Password.aspx?$}, '/blog/set-a-value-on-an-textbox-with-his-textmode-set-to-password'
    r301 %r{^/post/Top-5-reasons-not-to-use-ReSharper.aspx?$}, '/blog/top-5-reasons-not-to-use-resharper'
    r301 %r{^/post/SQL-Server-Error-failed-to-retrieve-text-for-this-error-Reason-1815.aspx?$}, '/blog/sql-server-error-failed-to-retrieve-text-for-this-error-reason-1815'
    r301 %r{^/post/Evernote-4-is-better-than-ever.aspx?$}, '/blog/evernote-4-is-better-than-ever'
    r301 %r{^/post/New-code-drop-to-the-ASPNET-project-on-Codeplex.aspx?$}, '/blog/new-code-drop-to-the-aspnet-project-on-codeplex'
    r301 %r{^/post/Top-5-most-influential-peoples-on-my-career.aspx?$}, '/blog/top-5-most-influential-peoples-on-my-career'
    r301 %r{^/post/I-was-a-gamer.aspx?$}, '/blog/i-was-a-gamer'
    r301 %r{^/post/Setting-ComVisible.aspx?$}, '/blog/setting-comvisible'
    r301 %r{^/post/Basic-Layout-of-my-solution.aspx?$}, '/blog/basic-layout-of-my-solution'
    r301 %r{^/post/Great-unit-tests-review-by-Roy-Osherove.aspx?$}, '/blog/great-unit-tests-review-by-roy-osherove'
    r301 %r{^/post/viVim-30-days-Day-6.aspx?$}, '/blog/vivim-30-days-day-6'
    r301 %r{^/post/Getting-rid-of-intellisense-addiction.aspx?$}, '/blog/getting-rid-of-intellisense-addiction'
    r301 %r{^/post/Refreshing-my-memory-Delegates-in-C.aspx?$}, '/blog/refreshing-my-memory-delegates-in-c'
    r301 %r{^/post/My-Clojure-tutorial-failure.aspx?$}, '/blog/my-clojure-tutorial-failure'
    r301 %r{^/post/First-experience-with-Visual-Studio-2008.aspx?$}, '/blog/first-experience-with-visual-studio-2008'
    r301 %r{^/post/Why-is-my-object-losing-all-of-its-values-when-sent-through-WCF.aspx?$}, '/blog/why-is-my-object-losing-all-of-its-values-when-sent-through-wcf'
    r301 %r{^/post/A-new-job.aspx?$}, '/blog/a-new-job'
    r301 %r{^/post/viVim-30-days-Day-5.aspx?$}, '/blog/vivim-30-days-day-5'
    r301 %r{^/post/Learning-Rails-Using-jQuery-instead-of-Prototype.aspx?$}, '/blog/learning-rails-using-jquery-instead-of-prototype'
    r301 %r{^/post/Pragmatic-Thinking-Learning-Book-review.aspx?$}, '/blog/pragmatic-thinking-learning-book-review'
    r301 %r{^/post/Top-5-shortcuts-you-need-to-know-to-be-a-ReSharper-Padawan.aspx?$}, '/blog/top-5-shortcuts-you-need-to-know-to-be-a-resharper-padawan'
    r301 %r{^/post/Adding-NCover-to-CruiseControlNET.aspx?$}, '/blog/adding-ncover-to-cruisecontrolnet'
    r301 %r{^/post/Another-Metablogging-post.aspx?$}, '/blog/another-metablogging-post'
    r301 %r{^/post/Visual-Studio-20052008-Starting-a-solution-correctly.aspx?$}, '/blog/visual-studio-20052008-starting-a-solution-correctly'
    r301 %r{^/post/Nightmare-platform.aspx?$}, '/blog/nightmare-platform'
    r301 %r{^/post/Unit-Of-Work.aspx?$}, '/blog/unit-of-work'
    r301 %r{^/post/Sys-is-undefined.aspx?$}, '/blog/sys-is-undefined'
    r301 %r{^/post/Thoughts-about-Google-Chrome.aspx?$}, '/blog/thoughts-about-google-chrome'
    r301 %r{^/post/Studying-for-70-310.aspx?$}, '/blog/studying-for-70-310'
    r301 %r{^/post/Testing-controllers-in-ASPNET-MVC-aka-ActionResult.aspx?$}, '/blog/testing-controllers-in-aspnet-mvc-aka-actionresult'
    r301 %r{^/post/NAnt-086-beta-1-is-out-!!.aspx?$}, '/blog/nant-086-beta-1-is-out-!!'
    r301 %r{^/post/Ajax-Wcf-and-deserialization-problem.aspx?$}, '/blog/ajax-wcf-and-deserialization-problem'
    r301 %r{^/post/Scott-Hanselmans-2007-Ultimate-Developer-and-Power-Users-Tool-List.aspx?$}, '/blog/scott-hanselmans-2007-ultimate-developer-and-power-users-tool-list'
    r301 %r{^/post/How-to-remove-the-need-to-check-if-an-item-is-present-in-the-list-of-items-on-a-ListControl.aspx?$}, '/blog/how-to-remove-the-need-to-check-if-an-item-is-present-in-the-list-of-items-on-a-listcontrol'
    r301 %r{^/post/Book-Review-of-Dont-Make-Me-Think-A-Common-Sense-Approach-to-Web-Usability-par-Steve-Krug.aspx?$}, '/blog/book-review-of-dont-make-me-think-a-common-sense-approach-to-web-usability-par-steve-krug'
    r301 %r{^/post/I-am-now-available-to-hire-!.aspx?$}, '/blog/i-am-now-available-to-hire-!'
    r301 %r{^/post/Adding-an-element-to-an-array-in-C.aspx?$}, '/blog/adding-an-element-to-an-array-in-c'
    r301 %r{^/post/Blog-of-the-day.aspx?$}, '/blog/blog-of-the-day'
    r301 %r{^/post/Running-a-WCF-Service-in-IIS-7.aspx?$}, '/blog/running-a-wcf-service-in-iis-7'
    r301 %r{^/post/Mocking-the-HttpContext-in-ASPNET-MVC.aspx?$}, '/blog/mocking-the-httpcontext-in-aspnet-mvc'

end


#
# From Rack::DirectoryIndex:
# https://github.com/craigmarksmith/rack-directory-index/
#
module Rack
  class DirectoryIndex
    def initialize(app)
      @app = app
    end
    def call(env)
      index_path = ::File.join($root, 'public', Rack::Request.new(env).path.split('/'), 'index.html')
      if ::File.exists?(index_path)
        return [200, {"Content-Type" => "text/html"}, [::File.read(index_path)]]
      else
        @app.call(env)
      end
    end
  end
end

use Rack::DirectoryIndex

run Rack::Directory.new($root + '/public')

