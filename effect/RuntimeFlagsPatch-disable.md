# disable

Creates a `RuntimeFlagsPatch` describing disabling the provided `RuntimeFlag`.

To import and use `disable` from the "RuntimeFlagsPatch" module:

ts
import \* as RuntimeFlagsPatch from "effect/RuntimeFlagsPatch"
// Can be accessed like this
RuntimeFlagsPatch.disable
undefined

**Signature**

```ts
export declare const disable: (flag: RuntimeFlags.RuntimeFlag) => RuntimeFlagsPatch
```
