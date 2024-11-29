# isDone

Returns `true` if this `Deferred` has already been completed with a value or
an error, `false` otherwise.

To import and use `isDone` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.isDone
undefined

**Signature**

```ts
export declare const isDone: <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>
```
