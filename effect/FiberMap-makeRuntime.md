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
  <XE extends E, XA extends A>(
    key: K,
    effect: Effect.Effect<XA, XE, R>,
    options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined }) | undefined
  ) => Fiber.RuntimeFiber<XA, XE>,
  never,
  any
>
```
