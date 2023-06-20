# includes

Returns `true` if the `RuntimeFlagsPatch` includes the specified
`RuntimeFlag`, `false` otherwise.

To import and use `includes` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.includes
```

**Signature**

```ts
export declare const includes: {
  (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean
}
```
