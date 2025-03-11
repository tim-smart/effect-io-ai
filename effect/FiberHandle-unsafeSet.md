## unsafeSet

Set the fiber in a FiberHandle. When the fiber completes, it will be removed from the FiberHandle.
If a fiber is already running, it will be interrupted unless `options.onlyIfMissing` is set.

**Signature**

```ts
declare const unsafeSet: { <A, E, XE extends E, XA extends A>(fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly interruptAs?: FiberId.FiberId | undefined; readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }): (self: FiberHandle<A, E>) => void; <A, E, XE extends E, XA extends A>(self: FiberHandle<A, E>, fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly interruptAs?: FiberId.FiberId | undefined; readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L187)

Since v2.0.0