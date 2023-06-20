# patch

Patches a set of `RuntimeFlag`s with a `RuntimeFlagsPatch`, returning the
patched set of `RuntimeFlag`s.

To import and use `patch` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.patch
```

**Signature**

```ts
export declare const patch: {
  (patch: RuntimeFlagsPatch.RuntimeFlagsPatch): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, patch: RuntimeFlagsPatch.RuntimeFlagsPatch): RuntimeFlags
}
```
