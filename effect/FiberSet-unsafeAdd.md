# unsafeAdd

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

To import and use `unsafeAdd` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.unsafeAdd
```

**Signature**

```ts
export declare const unsafeAdd: {
  <E, A, XE extends E, XA extends A>(fiber: Fiber.RuntimeFiber<XE, XA>): (self: FiberSet<E, A>) => void
  <E, A, XE extends E, XA extends A>(self: FiberSet<E, A>, fiber: Fiber.RuntimeFiber<XE, XA>): void
}
```
