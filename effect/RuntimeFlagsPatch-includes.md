# includes

Returns `true` if the `RuntimeFlagsPatch` includes the specified
`RuntimeFlag`, `false` otherwise.

To import and use `includes` from the "RuntimeFlagsPatch" module:

ts
import \* as RuntimeFlagsPatch from "effect/RuntimeFlagsPatch"
// Can be accessed like this
RuntimeFlagsPatch.includes
undefined

**Signature**

```ts
export declare const includes: {
  (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean
}
```
