# run

Run an Effect and add the forked fiber to the FiberMap.
When the fiber completes, it will be removed from the FiberMap.

To import and use `run` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.run
```

**Signature**

```ts
export declare const run: {
  <K, A, E>(
    self: FiberMap<K, A, E>,
    key: K,
    options?:
      | { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined }
      | undefined
  ): <R, XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>
  ) => Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>
  <K, A, E, R, XE extends E, XA extends A>(
    self: FiberMap<K, A, E>,
    key: K,
    effect: Effect.Effect<XA, XE, R>,
    options?:
      | { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined }
      | undefined
  ): Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>
}
```
