# exclude

Creates a `RuntimeFlagsPatch` which describes exclusion of the specified
`RuntimeFlag` from the set of `RuntimeFlags`.

To import and use `exclude` from the "RuntimeFlagsPatch" module:

ts
import \* as RuntimeFlagsPatch from "effect/RuntimeFlagsPatch"
// Can be accessed like this
RuntimeFlagsPatch.exclude
undefined

**Signature**

```ts
export declare const exclude: {
  (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): RuntimeFlagsPatch
}
```
