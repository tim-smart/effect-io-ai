# set

Add a fiber to the FiberMap. When the fiber completes, it will be removed from the FiberMap.
If the key already exists in the FiberMap, the previous fiber will be interrupted.

To import and use `set` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.set
```

**Signature**

```ts
export declare const set: {
  <K, E, A, XE extends E, XA extends A>(
    key: K,
    fiber: Fiber.RuntimeFiber<XE, XA>
  ): (self: FiberMap.FiberMap<K, E, A>) => Effect.Effect<never, never, void>
  <K, E, A, XE extends E, XA extends A>(
    self: FiberMap.FiberMap<K, E, A>,
    key: K,
    fiber: Fiber.RuntimeFiber<XE, XA>
  ): Effect.Effect<never, never, void>
}
```
