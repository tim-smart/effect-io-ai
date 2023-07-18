# logWarning

Logs the specified message or cause at the Warning log level.

To import and use `logWarning` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logWarning
```

**Signature**

```ts
export declare const logWarning: <A extends string | Cause.Cause<unknown>>(
  messageOrCause: A,
  supplementry?: (A extends string ? Cause.Cause<unknown> : string) | undefined
) => Effect<never, never, void>
```
