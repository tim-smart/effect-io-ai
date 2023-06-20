# logInfoCause

Logs the specified cause at the informational log level.

To import and use `logInfoCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logInfoCause
```

**Signature**

```ts
export declare const logInfoCause: <E>(cause: Cause.Cause<E>) => Effect<never, never, void>
```
