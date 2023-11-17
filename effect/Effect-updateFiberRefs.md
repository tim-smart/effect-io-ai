# updateFiberRefs

Updates the `FiberRef` values for the fiber running this effect using the
specified function.

To import and use `updateFiberRefs` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.updateFiberRefs
```

**Signature**

```ts
export declare const updateFiberRefs: (
  f: (fiberId: FiberId.Runtime, fiberRefs: FiberRefs.FiberRefs) => FiberRefs.FiberRefs
) => Effect<never, never, void>
```
