Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.set

Set the fiber in the FiberHandle. When the fiber completes, it will be removed from the FiberHandle.
If a fiber already exists in the FiberHandle, it will be interrupted unless `options.onlyIfMissing` is set.

**Signature**

```ts
declare const set: { <A, E, XE extends E, XA extends A>(fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; }): (self: FiberHandle<A, E>) => Effect.Effect<void>; <A, E, XE extends E, XA extends A>(self: FiberHandle<A, E>, fiber: Fiber.RuntimeFiber<XA, XE>, options?: { readonly onlyIfMissing?: boolean; readonly propagateInterruption?: boolean | undefined; }): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L253)

Since v2.0.0