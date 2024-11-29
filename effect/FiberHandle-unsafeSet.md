# unsafeSet

Set the fiber in a FiberHandle. When the fiber completes, it will be removed from the FiberHandle.
If a fiber is already running, it will be interrupted unless `options.onlyIfMissing` is set.

To import and use `unsafeSet` from the "FiberHandle" module:

ts
import \* as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.unsafeSet
undefined

**Signature**

```ts
export declare const unsafeSet: {
  <A, E, XE extends E, XA extends A>(
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?: {
      readonly interruptAs?: FiberId.FiberId | undefined
      readonly onlyIfMissing?: boolean | undefined
      readonly propagateInterruption?: boolean | undefined
    }
  ): (self: FiberHandle<A, E>) => void
  <A, E, XE extends E, XA extends A>(
    self: FiberHandle<A, E>,
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?: {
      readonly interruptAs?: FiberId.FiberId | undefined
      readonly onlyIfMissing?: boolean | undefined
      readonly propagateInterruption?: boolean | undefined
    }
  ): void
}
```
