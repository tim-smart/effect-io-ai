# add

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

To import and use `add` from the "FiberSet" module:

ts
import \* as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.add
undefined

**Signature**

```ts
export declare const add: {
  <A, E, XE extends E, XA extends A>(
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?: { readonly propagateInterruption?: boolean | undefined } | undefined
  ): (self: FiberSet<A, E>) => Effect.Effect<void>
  <A, E, XE extends E, XA extends A>(
    self: FiberSet<A, E>,
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?: { readonly propagateInterruption?: boolean | undefined } | undefined
  ): Effect.Effect<void>
}
```
