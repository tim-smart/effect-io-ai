# complete

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

Note that `Deferred.completeWith` will be much faster, so consider using
that if you do not need to memoize the result of the specified effect.

Part of the `Deferred` module from the `@effect/io` package. Also known as `Deferred.complete`.
