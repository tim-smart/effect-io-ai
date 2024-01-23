# run

Run an Effect and add the forked fiber to the FiberMap.
When the fiber completes, it will be removed from the FiberMap.

To import and use `run` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.run
```

**Signature**

```ts
export declare const run: {
  <K, E, A>(
    self: FiberMap.FiberMap<K, E, A>,
    key: K
  ): <R, XE extends E, XA extends A>(
    effect: Effect.Effect<R, XE, XA>
  ) => Effect.Effect<R, never, Fiber.RuntimeFiber<XE, XA>>
  <K, E, A, R, XE extends E, XA extends A>(
    self: FiberMap.FiberMap<K, E, A>,
    key: K,
    effect: Effect.Effect<R, XE, XA>
  ): Effect.Effect<R, never, Fiber.RuntimeFiber<XE, XA>>
}
```
