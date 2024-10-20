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
export declare const makeRuntime: <R = never, A = unknown, E = unknown>() => Effect.Effect<
  <XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>,
    options?: Runtime.RunForkOptions | undefined
  ) => Fiber.RuntimeFiber<XA, XE>,
  never,
  Scope.Scope | R
>
```
