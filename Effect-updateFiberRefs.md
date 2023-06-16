# updateFiberRefs

Updates the `FiberRef` values for the fiber running this effect using the
specified function.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.updateFiberRefs`.

### Signature

```typescript
export declare const updateFiberRefs: (
  f: (fiberId: FiberId.Runtime, fiberRefs: FiberRefs.FiberRefs) => FiberRefs.FiberRefs
) => Effect<never, never, void>
```
