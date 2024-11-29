# set

Set the fiber in the FiberHandle. When the fiber completes, it will be removed from the FiberHandle.
If a fiber already exists in the FiberHandle, it will be interrupted unless `options.onlyIfMissing` is set.

To import and use `set` from the "FiberHandle" module:

ts
import \* as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.set
undefined

**Signature**

```ts
export declare const set: {
  <A, E, XE extends E, XA extends A>(
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined }
  ): (self: FiberHandle<A, E>) => Effect.Effect<void>
  <A, E, XE extends E, XA extends A>(
    self: FiberHandle<A, E>,
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined }
  ): Effect.Effect<void>
}
```
