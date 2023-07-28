# logError

Logs the specified message or cause at the Error log level.

To import and use `logError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logError
```

**Signature**

```ts
export declare const logError: <A>(
  messageOrCause: A,
  supplementary?: (A extends Cause.Cause<any> ? unknown : Cause.Cause<unknown>) | undefined
) => Effect<never, never, void>
```
