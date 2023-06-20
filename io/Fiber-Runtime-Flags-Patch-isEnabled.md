# isEnabled

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as enabled.

To import and use `isEnabled` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.isEnabled
```

**Signature**

```ts
export declare const isEnabled: {
  (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): boolean
}
```
