# andThen

Creates a `RuntimeFlagsPatch` describing the application of the `self` patch,
followed by `that` patch.

To import and use `andThen` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.andThen
```

**Signature**

```ts
export declare const andThen: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
