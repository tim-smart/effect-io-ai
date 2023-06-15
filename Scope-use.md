# use

Uses the scope by providing it to an `Effect` workflow that needs a scope,
guaranteeing that the scope is closed with the result of that workflow as
soon as the workflow completes execution, whether by success, failure, or
interruption.

Part of the `Scope` module from the `@effect/io` package. Also known as `Scope.use`.
