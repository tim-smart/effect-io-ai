# run

Fork an Effect and add the forked fiber to the FiberSet.
When the fiber completes, it will be removed from the FiberSet.

To import and use `run` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.run
```

**Signature**

```ts
export declare const run: {
  <A, E>(
    self: FiberSet<A, E>
  ): <R, XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>
  ) => Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>
  <A, E, R, XE extends E, XA extends A>(
    self: FiberSet<A, E>,
    effect: Effect.Effect<XA, XE, R>
  ): Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>
}
```
