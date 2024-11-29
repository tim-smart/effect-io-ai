# run

Run an Effect and add the forked fiber to the FiberHandle.
When the fiber completes, it will be removed from the FiberHandle.

To import and use `run` from the "FiberHandle" module:

ts
import \* as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.run
undefined

**Signature**

```ts
export declare const run: {
  <A, E>(
    self: FiberHandle<A, E>,
    options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined }
  ): <R, XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>
  ) => Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>
  <A, E, R, XE extends E, XA extends A>(
    self: FiberHandle<A, E>,
    effect: Effect.Effect<XA, XE, R>,
    options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined }
  ): Effect.Effect<Fiber.RuntimeFiber<XA, XE>, never, R>
}
```
