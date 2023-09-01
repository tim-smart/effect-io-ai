# enable

Enables the specified `RuntimeFlag`.

To import and use `enable` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from '@effect/io/RuntimeFlags'

// Can be accessed like this
RuntimeFlags.enable
```

**Signature**

```ts
export declare const enable: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flag: RuntimeFlag): RuntimeFlags
}
```
