# get

Retrieves the current value of the scoped reference.

To import and use `get` from the "ScopedRef" module:

ts
import \* as ScopedRef from "effect/ScopedRef"
// Can be accessed like this
ScopedRef.get
undefined

**Signature**

```ts
export declare const get: <A>(self: ScopedRef<A>) => Effect.Effect<A>
```
