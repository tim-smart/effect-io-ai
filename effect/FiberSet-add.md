# add

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

To import and use `add` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.add
```

**Signature**

```ts
export declare const add: {
  <E, A, XE extends E, XA extends A>(
    fiber: Fiber.RuntimeFiber<XE, XA>
  ): (self: FiberSet<E, A>) => Effect.Effect<never, never, void>
  <E, A, XE extends E, XA extends A>(
    self: FiberSet<E, A>,
    fiber: Fiber.RuntimeFiber<XE, XA>
  ): Effect.Effect<never, never, void>
}
```
