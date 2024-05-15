;;;;
;;;; .clrc.lisp
;;;;
;;;; General Common Lisp config loaded by each implementation init file.
;;;;
;;;; Copyright (c) 2024 Angel Peralta <acort3255@gmail.com>

#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;; (setf *read-default-float-format* 'single-float)
;;
;; (pushnew (truename (uiop:getenv "CL_PROJECTS_PATH")) asdf:*central-registry*)
(pushnew (truename (uiop:getenv "CL_PROJECTS_PATH")) ql:*local-project-directories*)

(setf *print-pretty* t
      *print-escape* t
      *print-right-margin* 100
      *print-miser-width* nil
      *print-length* 1000
      *print-level* 250)
