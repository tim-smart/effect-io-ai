# enabledSet

Returns a `ReadonlySet<number>` containing the `RuntimeFlags` described as
enabled by the specified `RuntimeFlagsPatch`.

To import and use `enabledSet` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from 'effect/RuntimeFlagsPatch'

// Can be accessed like this
RuntimeFlagsPatch.enabledSet
```

**Signature**

```ts
export declare const enabledSet: (self: RuntimeFlagsPatch) => ReadonlySet<RuntimeFlags.RuntimeFlag>
```
