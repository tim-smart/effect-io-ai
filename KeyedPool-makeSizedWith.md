# makeSizedWith

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

The size of the underlying pools can be configured per key.

Part of the `KeyedPool` module from the `@effect/io` package. Also known as `KeyedPool.makeSizedWith`.
