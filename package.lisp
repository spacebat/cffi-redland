(defpackage #:redland
    (:use #:cl #:iterate #:alexandria #:cffi #:trivial-garbage)
  (:export #:unown-pointer
           #:free-pointer
           #:world
           #:storage
           #:model
           #:node
           #:statement
           #:uri
           #:parser
           #:serializer
           #:digest
           #:iterator
           #:node-iterator
           #:statement-iterator
           #:redland-stream
           #:node-stream
           #:statement-stream
           #:query
           #:query-results
           #:*world*
           #:*storage*
           #:*model*
           #:with-world
           #:make-log-everything
           #:set-log-function
           #:with-log-function
           #:with-logging
           #:world-get-feature
           #:world-set-feature
           #:get-concept-resource
           #:get-concept-uri
           #:gen-name
           #:is-blank-node
           #:get-blank-node
           #:object-is-literal
           #:iterator-next
           #:iterator-endp
           #:iterator-get-object
           #:make-model
           #:with-model
           #:model-size
           #:model-add
           #:model-add-string-literal-statement
           #:model-add-typed-literal-statement
           #:model-add-statement
           #:model-add-statements
           #:model-remove-statement
           #:model-contains-statement-p
           #:model-has-arc-in
           #:model-has-arc-out
           #:model-as-stream
           #:model-find-statements
           #:model-get-sources #:model-get-arcs #:model-get-targets
           #:model-get-source #:model-get-arc #:model-get-target
           #:model-get-arcs-in
           #:model-get-arcs-out
           #:model-context-add-statement
           #:model-context-add-statements
           #:model-context-remove-statement
           #:model-context-remove-statements
           #:model-context-as-stream
           #:model-contains-context
           #:model-query-execute
           #:model-sync
           #:model-get-storage
           #:model-load
           #:model-to-string
           #:model-find-statements-in-context
           #:model-get-contexts
           #:model-get-feature
           #:model-set-feature
           #:model-transaction-commit
           #:model-transaction-rollback
           #:model-transaction-start
           #:make-private-node
           #:make-node-from-uri-string
           #:make-node-from-uri
           #:make-node-from-uri-local-name
           #:make-node-from-normalised-uri-string
           #:make-node-from-literal
           #:make-node-from-typed-literal
           #:make-node-from-blank-identifier
           #:copy-node
           #:node-get-uri
           #:node-get-type
           #:node-get-literal-value
           #:node-get-li-ordinal
           #:node-get-blank-identifier
           #:node-is-resource-p
           #:node-is-literal-p
           #:node-is-blank-p
           #:node-to-string
           #:node-equals-p
           #:make-parser
           #:parse-as-stream
           #:parse-into-model
           #:parse-string-as-stream
           #:parse-string-into-model
           #:parser-get-feature
           #:parser-set-feature
           #:make-query
           #:copy-query
           #:query-execute
           #:query-get-limit
           #:query-set-limit
           #:query-get-offset
           #:query-set-offset
           #:query-results-as-stream
           #:query-results-get-count
           #:query-results-next
           #:query-results-finished
           #:query-results-get-bindings
           #:query-results-get-binding-value
           #:query-results-get-binding-name
           #:query-results-get-binding-value-by-name
           #:query-results-get-bindings-count
           #:query-results-to-string
           #:query-results-to-file
           #:query-results-is-bindings-p
           #:query-results-is-boolean-p
           #:query-results-is-graph-p
           #:query-results-is-syntax-p
           #:query-results-get-boolean
           #:query-results-formats-enumerate
           #:serializer-enumerate
           #:make-serializer
           #:serialize-model-to-file
           #:serialize-model-to-string
           #:serialize-stream-to-file
           #:serialize-stream-to-string
           #:serializer-get-feature
           #:serializer-set-feature
           #:serilizer-set-namespace
           #:make-statement
           #:copy-statement
           #:make-statement-from-nodes
           #:statement-clear
           #:statement-get-set
           #:statement-get-subject #:statement-set-subject
           #:statement-get-predicate #:statement-set-predicate
           #:statement-get-object #:statement-set-object
           #:statement-is-complete-p
           #:statement-to-string
           #:statement-equals-p
           #:statement-match-p
           #:storage-enumerate
           #:make-storage
           #:with-storage
           #:copy-storage
           #:storage-get-feature
           #:storage-set-feature
           #:stream-next
           #:stream-endp
           #:stream-get-object
           #:make-uri
           #:copy-uri
           #:make-uri-from-uri-local-name
           #:uri-as-string
           #:uri-to-string
           #:uri-equals
           #:is-file-uri-p
           #:uri-to-filename
           #:make-uri-normalised-to-base
           #:make-uri-relative-to-base
           #:make-uri-from-filename
           #:uri-compare
           #:IN-REDLAND-STREAM
           #:IN-REDLAND-ITERATOR
           #:IN-MODEL
           #:IN-QUERY-RESULTS
           #:model-enumerate
           #:parser-enumerate
           #:get-all-enumerate
           #:redland-error
           #:redland-construction-error
           #:redland-feature-error
           #:redland-statement-add-error
           #:redland-transaction-error
           #:do-query
           #:model-find-statements-with-nodes
           #:model-find-statements-in-context-with-nodes
           #:model-to-list
           #:stream-to-list
           #:iterator-to-list))
