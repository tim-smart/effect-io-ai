# isDisabled

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as disabled.

To import and use `isDisabled` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.isDisabled
```

**Signature**

```ts
export declare const isDisabled: {
  (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): boolean
}
```
