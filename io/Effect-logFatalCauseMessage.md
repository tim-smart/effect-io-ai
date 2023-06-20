# logFatalCauseMessage

Logs the specified message and cause at the fatal log level.

To import and use `logFatalCauseMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logFatalCauseMessage
```

**Signature**

```ts
export declare const logFatalCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
