# makeRuntime

Create an Effect run function that is backed by a FiberHandle.

To import and use `makeRuntime` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.makeRuntime
```

**Signature**

```ts
export declare const makeRuntime: <R, E = unknown, A = unknown>() => Effect.Effect<
  <XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>,
    options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined }) | undefined
  ) => Fiber.RuntimeFiber<XA, XE>,
  never,
  any
>
```
