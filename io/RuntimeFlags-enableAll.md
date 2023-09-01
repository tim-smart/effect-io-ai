# enableAll

Enables all of the `RuntimeFlag`s in the specified set of `RuntimeFlags`.

To import and use `enableAll` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from '@effect/io/RuntimeFlags'

// Can be accessed like this
RuntimeFlags.enableAll
```

**Signature**

```ts
export declare const enableAll: {
  (flags: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flags: RuntimeFlags): RuntimeFlags
}
```
