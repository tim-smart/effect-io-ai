# unsafeAdd

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

To import and use `unsafeAdd` from the "FiberSet" module:

ts
import \* as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.unsafeAdd
undefined

**Signature**

```ts
export declare const unsafeAdd: {
  <A, E, XE extends E, XA extends A>(
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?:
      | { readonly interruptAs?: FiberId.FiberId | undefined; readonly propagateInterruption?: boolean | undefined }
      | undefined
  ): (self: FiberSet<A, E>) => void
  <A, E, XE extends E, XA extends A>(
    self: FiberSet<A, E>,
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?:
      | { readonly interruptAs?: FiberId.FiberId | undefined; readonly propagateInterruption?: boolean | undefined }
      | undefined
  ): void
}
```
