# isDisabled

Returns `true` if the specified `RuntimeFlag` is disabled, `false` otherwise.

To import and use `isDisabled` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from '@effect/io/RuntimeFlags'

// Can be accessed like this
RuntimeFlags.isDisabled
```

**Signature**

```ts
export declare const isDisabled: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => boolean
  (self: RuntimeFlags, flag: RuntimeFlag): boolean
}
```
