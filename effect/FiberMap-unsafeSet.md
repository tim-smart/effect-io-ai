# unsafeSet

Add a fiber to the FiberMap. When the fiber completes, it will be removed from the FiberMap.
If the key already exists in the FiberMap, the previous fiber will be interrupted.

To import and use `unsafeSet` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.unsafeSet
```

**Signature**

```ts
export declare const unsafeSet: {
  <K, E, A, XE extends E, XA extends A>(
    key: K,
    fiber: Fiber.RuntimeFiber<XE, XA>,
    interruptAs?: FiberId.FiberId
  ): (self: FiberMap<K, E, A>) => void
  <K, E, A, XE extends E, XA extends A>(
    self: FiberMap<K, E, A>,
    key: K,
    fiber: Fiber.RuntimeFiber<XE, XA>,
    interruptAs?: FiberId.FiberId
  ): void
}
```
