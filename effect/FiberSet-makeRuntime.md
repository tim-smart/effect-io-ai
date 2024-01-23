# makeRuntime

Create an Effect run function that is backed by a FiberSet.

To import and use `makeRuntime` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.makeRuntime
```

**Signature**

```ts
export declare const makeRuntime: <R, E = unknown, A = unknown>() => Effect.Effect<
  any,
  never,
  <XE extends E, XA extends A>(
    effect: Effect.Effect<R, XE, XA>,
    options?: Runtime.RunForkOptions | undefined
  ) => Fiber.RuntimeFiber<XE, XA>
>
```
