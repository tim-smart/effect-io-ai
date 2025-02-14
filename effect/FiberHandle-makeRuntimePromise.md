# makeRuntimePromise

Create an Effect run function that is backed by a FiberHandle.

To import and use `makeRuntimePromise` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.makeRuntimePromise
```

**Signature**

```ts
export declare const makeRuntimePromise: <R = never, A = unknown, E = unknown>() => Effect.Effect<
  <XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>,
    options?: Runtime.RunForkOptions | undefined
  ) => Promise<XA>,
  never,
  Scope.Scope | R
>
```
