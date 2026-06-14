(require 'ox-publish)

(setq org-html-head "<link rel=\"stylesheet\" href=\"changeme\">") ; Fix title

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "a-rvid-eu"
             :recursive t
             :base-directory "./documents"
             :publishing-directory "./public"
             :publishing-function 'org-html-publish-to-html
             :author "a-rvid"
             :creator "a-rvid"
             :email "contact@rvid.eu"
             :with-email t
             :auto-sitemap t)))


;; Generate the site output
(org-publish-all t)
(message "Build complete!")
