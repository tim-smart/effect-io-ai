# diff

Creates a `RuntimeFlagsPatch` which describes the difference between `self`
and `that`.

To import and use `diff` from the "RuntimeFlags" module:

ts
import \* as RuntimeFlags from "effect/RuntimeFlags"
// Can be accessed like this
RuntimeFlags.diff
undefined

**Signature**

```ts
export declare const diff: {
  (that: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlagsPatch.RuntimeFlagsPatch
  (self: RuntimeFlags, that: RuntimeFlags): RuntimeFlagsPatch.RuntimeFlagsPatch
}
```
