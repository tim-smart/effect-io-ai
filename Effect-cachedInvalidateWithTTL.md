# cachedInvalidateWithTTL

Returns an effect that, if evaluated, will return the cached result of this
effect. Cached results will expire after `timeToLive` duration. In
addition, returns an effect that can be used to invalidate the current
cached value before the `timeToLive` duration expires.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.cachedInvalidateWithTTL`.
