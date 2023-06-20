# enable

Enables the specified `RuntimeFlag`.

To import and use `enable` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.enable
```

**Signature**

```ts
export declare const enable: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flag: RuntimeFlag): RuntimeFlags
}
```
