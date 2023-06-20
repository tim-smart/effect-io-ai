# enableAll

Enables all of the `RuntimeFlag`s in the specified set of `RuntimeFlags`.

To import and use `enableAll` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.enableAll
```

**Signature**

```ts
export declare const enableAll: {
  (flags: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flags: RuntimeFlags): RuntimeFlags
}
```
