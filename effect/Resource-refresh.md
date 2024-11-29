# refresh

Refreshes the cache. This method will not return until either the refresh
is successful, or the refresh operation fails.

To import and use `refresh` from the "Resource" module:

ts
import \* as Resource from "effect/Resource"
// Can be accessed like this
Resource.refresh
undefined

**Signature**

```ts
export declare const refresh: <A, E>(self: Resource<A, E>) => Effect.Effect<void, E>
```
