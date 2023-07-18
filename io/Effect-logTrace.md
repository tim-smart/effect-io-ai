# logTrace

Logs the specified message or cause at the Trace log level.

To import and use `logTrace` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logTrace
```

**Signature**

```ts
export declare const logTrace: <A extends string | Cause.Cause<unknown>>(
  messageOrCause: A,
  supplementry?: (A extends string ? Cause.Cause<unknown> : string) | undefined
) => Effect<never, never, void>
```
