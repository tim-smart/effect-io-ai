# logDebug

Logs the specified message or cause at the Debug log level.

To import and use `logDebug` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logDebug
```

**Signature**

```ts
export declare const logDebug: <A extends string | Cause.Cause<unknown>>(
  messageOrCause: A,
  supplementry?: (A extends string ? Cause.Cause<unknown> : string) | undefined
) => Effect<never, never, void>
```
