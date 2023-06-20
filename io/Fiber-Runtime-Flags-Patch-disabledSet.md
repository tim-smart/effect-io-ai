# disabledSet

Returns a `ReadonlySet<number>` containing the `RuntimeFlags` described as
disabled by the specified `RuntimeFlagsPatch`.

To import and use `disabledSet` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.disabledSet
```

**Signature**

```ts
export declare const disabledSet: (self: RuntimeFlagsPatch) => ReadonlySet<RuntimeFlags.RuntimeFlag>
```
