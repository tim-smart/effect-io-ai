# disable

Creates a `RuntimeFlagsPatch` describing disabling the provided `RuntimeFlag`.

To import and use `disable` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.disable
```

**Signature**

```ts
export declare const disable: (flag: RuntimeFlags.RuntimeFlag) => RuntimeFlagsPatch
```
