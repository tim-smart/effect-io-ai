# both

Creates a `RuntimeFlagsPatch` describing application of both the `self` patch
and `that` patch.

To import and use `both` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from '@effect/io/RuntimeFlagsPatch'

// Can be accessed like this
RuntimeFlagsPatch.both
```

**Signature**

```ts
export declare const both: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
