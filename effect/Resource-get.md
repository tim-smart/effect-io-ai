# get

Retrieves the current value stored in the cache.

To import and use `get` from the "Resource" module:

```ts
import * as Resource from "effect/Resource"
// Can be accessed like this
Resource.get
```

**Signature**

```ts
export declare const get: <E, A>(self: Resource<E, A>) => Effect.Effect<never, E, A>
```
