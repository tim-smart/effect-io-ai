# runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberMap.

To import and use `runtimePromise` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.runtimePromise
```

**Signature**

```ts
export declare const runtimePromise: <K, A, E>(
  self: FiberMap<K, A, E>
) => <R = never>() => Effect.Effect<
  <XE extends E, XA extends A>(
    key: K,
    effect: Effect.Effect<XA, XE, R>,
    options?:
      | (Runtime.RunForkOptions & {
          readonly onlyIfMissing?: boolean | undefined
          readonly propagateInterruption?: boolean | undefined
        })
      | undefined
  ) => Promise<XA>,
  never,
  R
>
```
