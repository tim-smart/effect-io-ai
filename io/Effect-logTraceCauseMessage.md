# logTraceCauseMessage

Logs the specified message and cause at the trace log level.

To import and use `logTraceCauseMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logTraceCauseMessage
```

**Signature**

```ts
export declare const logTraceCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
