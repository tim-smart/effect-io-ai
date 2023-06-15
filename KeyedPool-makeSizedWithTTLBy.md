# makeSizedWithTTLBy

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

The size of the underlying pools can be configured per key.

Part of the `KeyedPool` module from the `@effect/io` package. Also known as `KeyedPool.makeSizedWithTTLBy`.
