# enabledSet

Returns a `ReadonlySet<number>` containing the `RuntimeFlags` described as
enabled by the specified `RuntimeFlagsPatch`.

To import and use `enabledSet` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.enabledSet
```

**Signature**

```ts
export declare const enabledSet: (self: RuntimeFlagsPatch) => ReadonlySet<RuntimeFlags.RuntimeFlag>
```
