# disable

Disables the specified `RuntimeFlag`.

To import and use `disable` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.disable
```

**Signature**

```ts
export declare const disable: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flag: RuntimeFlag): RuntimeFlags
}
```
