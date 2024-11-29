# unsafeMake

Unsafely creates a new `Deferred` from the specified `FiberId`.

To import and use `unsafeMake` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.unsafeMake
undefined

**Signature**

```ts
export declare const unsafeMake: <A, E = never>(fiberId: FiberId.FiberId) => Deferred<A, E>
```
