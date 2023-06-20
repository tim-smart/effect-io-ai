# differ

Constructs a differ that knows how to diff `RuntimeFlags` values.

To import and use `differ` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.differ
```

**Signature**

```ts
export declare const differ: (_: void) => Differ.Differ<RuntimeFlags, RuntimeFlagsPatch.RuntimeFlagsPatch>
```
