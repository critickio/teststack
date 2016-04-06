module Pages
    module Web
        class Entherprenurship < SitePrism::Page
          include RSpec::Matchers

          set_url '/programs/entrepreneurship/'
          set_url_matcher(/programs\/entherprenurship$/)

          # individual elements
          element :apply_now,'#apply-now-nav-text'
          element :account_details,'#dropdown-menu-1', text: "My Account"
          element :upgrad_logo,'.navbar-brand>img'
          element :request_demo,'#footer-request-info', text: "Request Free Demo"

          element :highlights_tab,'#course-tabs-active>a', text: "Highlights"
          element :curriculum_tab,'.course-tabs-list-item>a', text: "Curriculum"
          element :faq_tab,'.faqs-text', visible: true
          element :info_sessions_tab,'.course-tabs-list-item>a', text: "Info Sessions"

          element :error_toast,'.errorToast'
          element :loading,'#loading-message',visible: true


          def verify_login
              has_account_details?
          end

          def apply
            if has_apply_now?
               apply_now.click
            else
               puts "unable to apply"
            end
          end

        end
    end
end
