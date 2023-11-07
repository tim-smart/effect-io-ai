# andThen

Creates a `RuntimeFlagsPatch` describing the application of the `self` patch,
followed by `that` patch.

To import and use `andThen` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from 'effect/RuntimeFlagsPatch'

// Can be accessed like this
RuntimeFlagsPatch.andThen
```

**Signature**

```ts
export declare const andThen: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
