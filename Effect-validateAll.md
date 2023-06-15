# validateAll

Feeds elements of type `A` to `f` and accumulates all errors in error
channel or successes in success channel.

This combinator is lossy meaning that if there are errors all successes
will be lost. To retain all information please use `partition`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.validateAll`.
