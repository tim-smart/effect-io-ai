# disabledSet

Returns a `ReadonlySet<number>` containing the `RuntimeFlags` described as
disabled by the specified `RuntimeFlagsPatch`.

To import and use `disabledSet` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from "effect/RuntimeFlagsPatch"
// Can be accessed like this
RuntimeFlagsPatch.disabledSet
```

**Signature**

```ts
export declare const disabledSet: (self: RuntimeFlagsPatch) => ReadonlySet<RuntimeFlags.RuntimeFlag>
```
