# isDisabled

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as disabled.

To import and use `isDisabled` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from "effect/RuntimeFlagsPatch"
// Can be accessed like this
RuntimeFlagsPatch.isDisabled
```

**Signature**

```ts
export declare const isDisabled: {
  (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): boolean
}
```
