# either

Creates a `RuntimeFlagsPatch` describing application of either the `self`
patch or `that` patch.

To import and use `either` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.either
```

**Signature**

```ts
export declare const either: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
