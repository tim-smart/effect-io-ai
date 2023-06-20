# diff

Creates a `RuntimeFlagsPatch` which describes the difference between `self`
and `that`.

To import and use `diff` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.diff
```

**Signature**

```ts
export declare const diff: {
  (that: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlagsPatch.RuntimeFlagsPatch
  (self: RuntimeFlags, that: RuntimeFlags): RuntimeFlagsPatch.RuntimeFlagsPatch
}
```
