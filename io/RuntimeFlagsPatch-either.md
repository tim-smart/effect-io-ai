# either

Creates a `RuntimeFlagsPatch` describing application of either the `self`
patch or `that` patch.

To import and use `either` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from '@effect/io/RuntimeFlagsPatch'

// Can be accessed like this
RuntimeFlagsPatch.either
```

**Signature**

```ts
export declare const either: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
