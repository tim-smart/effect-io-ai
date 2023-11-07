# isEnabled

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as enabled.

To import and use `isEnabled` from the "RuntimeFlagsPatch" module:

```ts
import * as RuntimeFlagsPatch from 'effect/RuntimeFlagsPatch'

// Can be accessed like this
RuntimeFlagsPatch.isEnabled
```

**Signature**

```ts
export declare const isEnabled: {
  (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): boolean
}
```
