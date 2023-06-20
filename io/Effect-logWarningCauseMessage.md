# logWarningCauseMessage

Logs the specified message and cause at the warning log level.

To import and use `logWarningCauseMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logWarningCauseMessage
```

**Signature**

```ts
export declare const logWarningCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
