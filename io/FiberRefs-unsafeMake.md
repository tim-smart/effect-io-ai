# unsafeMake

Note: it will not copy the provided Map, make sure to provide a fresh one.

To import and use `unsafeMake` from the "FiberRefs" module:

```ts
import * as FiberRefs from '@effect/io/FiberRefs'

// Can be accessed like this
FiberRefs.unsafeMake
```

**Signature**

```ts
export declare const unsafeMake: (
  fiberRefLocals: Map<FiberRef.FiberRef<any>, Arr.NonEmptyReadonlyArray<readonly [FiberId.Runtime, any]>>
) => FiberRefs
```
