# Cache

A `Cache` is defined in terms of a lookup function that, given a key of
type `Key`, can either fail with an error of type `Error` or succeed with a
value of type `Value`. Getting a value from the cache will either return
the previous result of the lookup function if it is available or else
compute a new result with the lookup function, put it in the cache, and
return it.

A cache also has a specified capacity and time to live. When the cache is
at capacity the least recently accessed values in the cache will be
removed to make room for new values. Getting a value with a life older than
the specified time to live will result in a new value being computed with
the lookup function and returned when available.

The cache is safe for concurrent access. If multiple fibers attempt to get
the same key the lookup function will only be computed once and the result
will be returned to all fibers.

Part of the `Cache` module from the `@effect/io` package. Also known as `Cache.Cache`.
