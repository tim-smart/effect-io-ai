# isEnabled

Returns `true` if the specified `RuntimeFlag` is enabled, `false` otherwise.

To import and use `isEnabled` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.isEnabled
```

**Signature**

```ts
export declare const isEnabled: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => boolean
  (self: RuntimeFlags, flag: RuntimeFlag): boolean
}
```
