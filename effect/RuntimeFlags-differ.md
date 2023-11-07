# differ

Constructs a differ that knows how to diff `RuntimeFlags` values.

To import and use `differ` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from 'effect/RuntimeFlags'

// Can be accessed like this
RuntimeFlags.differ
```

**Signature**

```ts
export declare const differ: Differ.Differ<RuntimeFlags, RuntimeFlagsPatch.RuntimeFlagsPatch>
```
