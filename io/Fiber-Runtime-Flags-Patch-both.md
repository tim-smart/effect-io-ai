# both

Creates a `RuntimeFlagsPatch` describing application of both the `self` patch
and `that` patch.

To import and use `both` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.both
```

**Signature**

```ts
export declare const both: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
