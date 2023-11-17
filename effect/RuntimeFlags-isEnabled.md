# isEnabled

Returns `true` if the specified `RuntimeFlag` is enabled, `false` otherwise.

To import and use `isEnabled` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from "effect/RuntimeFlags"
// Can be accessed like this
RuntimeFlags.isEnabled
```

**Signature**

```ts
export declare const isEnabled: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => boolean
  (self: RuntimeFlags, flag: RuntimeFlag): boolean
}
```
