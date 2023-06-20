# logErrorCauseMessage

Logs the specified message and cause at the error log level.

To import and use `logErrorCauseMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logErrorCauseMessage
```

**Signature**

```ts
export declare const logErrorCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
