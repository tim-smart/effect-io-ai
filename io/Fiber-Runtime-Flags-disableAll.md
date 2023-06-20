# disableAll

Disables all of the `RuntimeFlag`s in the specified set of `RuntimeFlags`.

To import and use `disableAll` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.disableAll
```

**Signature**

```ts
export declare const disableAll: {
  (flags: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flags: RuntimeFlags): RuntimeFlags
}
```
