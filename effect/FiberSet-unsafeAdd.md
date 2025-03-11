## unsafeAdd

Add a fiber to the FiberSet. When the fiber completes, it will be removed.

**Signature**

```ts
declare const unsafeAdd: { <A, E, XE extends E, XA extends A>(fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly interruptAs?: FiberId.FiberId | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): (self: FiberSet<A, E>) => void; <A, E, XE extends E, XA extends A>(self: FiberSet<A, E>, fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly interruptAs?: FiberId.FiberId | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L187)

Since v2.0.0