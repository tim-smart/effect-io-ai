# inverse

Creates a `RuntimeFlagsPatch` which describes the inverse of the patch
specified by the provided `RuntimeFlagsPatch`.

To import and use `inverse` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.inverse
```

**Signature**

```ts
export declare const inverse: (patch: RuntimeFlagsPatch) => RuntimeFlagsPatch
```
