# exclude

Creates a `RuntimeFlagsPatch` which describes exclusion of the specified
`RuntimeFlag` from the set of `RuntimeFlags`.

To import and use `exclude` from the "Patch" module:

```ts
import * as Patch from '@effect/io/Fiber/Runtime/Flags/Patch'

// Can be accessed like this
Patch.exclude
```

**Signature**

```ts
export declare const exclude: {
  (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): RuntimeFlagsPatch
}
```
