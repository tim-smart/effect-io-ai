# runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberHandle.

The returned run function will return Promise's that will resolve when the
fiber completes.

To import and use `runtimePromise` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.runtimePromise
```

**Signature**

```ts
export declare const runtimePromise: <A, E>(
  self: FiberHandle<A, E>
) => <R = never>() => Effect.Effect<
  <XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>,
    options?: (Runtime.RunForkOptions & { readonly propagateInterruption?: boolean | undefined }) | undefined
  ) => Promise<XA>,
  never,
  R
>
```
