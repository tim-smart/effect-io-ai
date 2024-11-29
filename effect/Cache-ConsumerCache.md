# ConsumerCache

A ConsumerCache models a portion of a cache which is safe to share without allowing to create new values or access existing ones.

It can be used safely to give over control for request management without leaking writer side details.

To import and use `ConsumerCache` from the "Cache" module:

ts
import \* as Cache from "effect/Cache"
// Can be accessed like this
Cache.ConsumerCache
undefined
