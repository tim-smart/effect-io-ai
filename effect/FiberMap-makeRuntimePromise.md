# makeRuntimePromise

Create an Effect run function that is backed by a FiberMap.

To import and use `makeRuntimePromise` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.makeRuntimePromise
```

**Signature**

```ts
export declare const makeRuntimePromise: <R, K, A = unknown, E = unknown>() => Effect.Effect<
  <XE extends E, XA extends A>(
    key: K,
    effect: Effect.Effect<XA, XE, R>,
    options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined }) | undefined
  ) => Promise<XA>,
  never,
  Scope.Scope | R
>
```
