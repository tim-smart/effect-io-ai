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
  <E, A, R, XE extends E, XA extends A>(
    effect: Effect.Effect<R, XE, XA>
  ): (self: FiberSet<E, A>) => Effect.Effect<R, never, Fiber.RuntimeFiber<XE, XA>>
  <E, A, R, XE extends E, XA extends A>(
    self: FiberSet<E, A>,
    effect: Effect.Effect<R, XE, XA>
  ): Effect.Effect<R, never, Fiber.RuntimeFiber<XE, XA>>
}
```
