# interruption

Returns `true` if the `Interruption` `RuntimeFlag` is enabled, `false`
otherwise.

To import and use `interruption` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.interruption
```

**Signature**

```ts
export declare const interruption: (self: RuntimeFlags) => boolean
```
