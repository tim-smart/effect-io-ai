# isActive

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as active.

To import and use `isActive` from the "RuntimeFlagsPatch" module:

ts
import \* as RuntimeFlagsPatch from "effect/RuntimeFlagsPatch"
// Can be accessed like this
RuntimeFlagsPatch.isActive
undefined

**Signature**

```ts
export declare const isActive: {
  (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean
}
```
