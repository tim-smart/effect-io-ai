# diffFiberRefs

Returns a new workflow that executes this one and captures the changes in
`FiberRef` values.

To import and use `diffFiberRefs` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.diffFiberRefs
undefined

**Signature**

```ts
export declare const diffFiberRefs: <A, E, R>(self: Effect<A, E, R>) => Effect<[FiberRefsPatch.FiberRefsPatch, A], E, R>
```
