# runtimeFlags

Retrieves an effect that succeeds with the current runtime flags, which
govern behavior and features of the runtime system.

To import and use `runtimeFlags` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.runtimeFlags
```

**Signature**

```ts
export declare const runtimeFlags: Effect<never, never, RuntimeFlags.RuntimeFlags>
```
