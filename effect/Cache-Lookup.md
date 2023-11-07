# Lookup

A `Lookup` represents a lookup function that, given a key of type `Key`, can
return an effect that will either produce a value of type `Value` or fail
with an error of type `Error` using an environment of type `Environment`.

To import and use `Lookup` from the "Cache" module:

```ts
import * as Cache from 'effect/Cache'

// Can be accessed like this
Cache.Lookup
```
