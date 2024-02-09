# getRuntimeFlags

Retrieves an effect that succeeds with the current runtime flags, which
govern behavior and features of the runtime system.

To import and use `getRuntimeFlags` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.getRuntimeFlags
```

**Signature**

```ts
export declare const getRuntimeFlags: Effect<RuntimeFlags.RuntimeFlags, never, never>
```
