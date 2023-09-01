# disable

Disables the specified `RuntimeFlag`.

To import and use `disable` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from '@effect/io/RuntimeFlags'

// Can be accessed like this
RuntimeFlags.disable
```

**Signature**

```ts
export declare const disable: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flag: RuntimeFlag): RuntimeFlags
}
```
