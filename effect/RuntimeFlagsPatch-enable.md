# enable

Creates a `RuntimeFlagsPatch` describing enabling the provided `RuntimeFlag`.

To import and use `enable` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from 'effect/RuntimeFlagsPatch'

// Can be accessed like this
RuntimeFlagsPatch.enable
```

**Signature**

```ts
export declare const enable: (flag: RuntimeFlags.RuntimeFlag) => RuntimeFlagsPatch
```
