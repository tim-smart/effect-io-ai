# completeEffect

Complete a `Request` with the specified effectful computation, failing the
request with the error from the effect workflow if it fails, and completing
the request with the value of the effect workflow if it succeeds.

Part of the `Request` module from the `@effect/io` package. Also known as `Request.completeEffect`.
