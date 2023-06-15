# ConsumerCache

A ConsumerCache models a portion of a cache which is safe to share without allowing to create new values or access existing ones.

It can be used safely to give over control for request management without leaking writer side details.

Part of the `Cache` module from the `@effect/io` package. Also known as `Cache.ConsumerCache`.
