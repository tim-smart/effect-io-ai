# makeRuntime

Create an Effect run function that is backed by a FiberMap.

To import and use `makeRuntime` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.makeRuntime
```

**Signature**

```ts
export declare const makeRuntime: <R, K, E = unknown, A = unknown>() => Effect.Effect<
  any,
  never,
  <XE extends E, XA extends A>(
    key: K,
    effect: Effect.Effect<R, XE, XA>,
    options?: Runtime.RunForkOptions | undefined
  ) => Fiber.RuntimeFiber<XE, XA>
>
```
