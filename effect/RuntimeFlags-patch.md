# patch

Patches a set of `RuntimeFlag`s with a `RuntimeFlagsPatch`, returning the
patched set of `RuntimeFlag`s.

To import and use `patch` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from 'effect/RuntimeFlags'

// Can be accessed like this
RuntimeFlags.patch
```

**Signature**

```ts
export declare const patch: {
  (patch: RuntimeFlagsPatch.RuntimeFlagsPatch): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, patch: RuntimeFlagsPatch.RuntimeFlagsPatch): RuntimeFlags
}
```
