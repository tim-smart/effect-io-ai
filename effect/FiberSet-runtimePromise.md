# runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberSet.

The returned run function will return Promise's.

To import and use `runtimePromise` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.runtimePromise
```

**Signature**

```ts
export declare const runtimePromise: <A, E>(
  self: FiberSet<A, E>
) => <R = never>() => Effect.Effect<
  <XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>,
    options?: (Runtime.RunForkOptions & { readonly propagateInterruption?: boolean | undefined }) | undefined
  ) => Promise<XA>,
  never,
  R
>
```
