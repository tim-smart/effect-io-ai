# logInfoCauseMessage

Logs the specified message and cause at the informational log level.

To import and use `logInfoCauseMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logInfoCauseMessage
```

**Signature**

```ts
export declare const logInfoCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
