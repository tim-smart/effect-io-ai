# isActive

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as active.

To import and use `isActive` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.isActive
```

**Signature**

```ts
export declare const isActive: {
  (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean
}
```
