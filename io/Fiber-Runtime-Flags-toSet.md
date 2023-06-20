# toSet

Converts the provided `RuntimeFlags` into a `ReadonlySet<number>`.

To import and use `toSet` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.toSet
```

**Signature**

```ts
export declare const toSet: (self: RuntimeFlags) => ReadonlySet<RuntimeFlag>
```
