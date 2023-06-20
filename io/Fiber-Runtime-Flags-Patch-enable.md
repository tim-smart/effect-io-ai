# enable

Creates a `RuntimeFlagsPatch` describing enabling the provided `RuntimeFlag`.

To import and use `enable` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.enable
```

**Signature**

```ts
export declare const enable: (flag: RuntimeFlags.RuntimeFlag) => RuntimeFlagsPatch
```
