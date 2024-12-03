# patchFiberRefs

Applies the specified changes to the `FiberRef` values for the fiber
running this workflow.

To import and use `patchFiberRefs` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.patchFiberRefs
```

**Signature**

```ts
export declare const patchFiberRefs: (patch: FiberRefsPatch.FiberRefsPatch) => Effect<void>
```
