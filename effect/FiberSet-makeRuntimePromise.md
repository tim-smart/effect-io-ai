# makeRuntimePromise

Create an Effect run function that is backed by a FiberSet.

To import and use `makeRuntimePromise` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.makeRuntimePromise
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
