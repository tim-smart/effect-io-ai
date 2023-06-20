# isDisabled

Returns `true` if the specified `RuntimeFlag` is disabled, `false` otherwise.

To import and use `isDisabled` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.isDisabled
```

**Signature**

```ts
export declare const isDisabled: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => boolean
  (self: RuntimeFlags, flag: RuntimeFlag): boolean
}
```
