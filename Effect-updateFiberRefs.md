# updateFiberRefs

Updates the `FiberRef` values for the fiber running this effect using the
specified function.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const updateFiberRefs: (
  f: (fiberId: FiberId.Runtime, fiberRefs: FiberRefs.FiberRefs) => FiberRefs.FiberRefs
) => Effect<never, never, void>
```
