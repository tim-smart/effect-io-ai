# logWarningCause

Logs the specified cause at the warning log level.

To import and use `logWarningCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logWarningCause
```

**Signature**

```ts
export declare const logWarningCause: <E>(cause: Cause.Cause<E>) => Effect<never, never, void>
```
