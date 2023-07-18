# logFatal

Logs the specified message or cause at the Fatal log level.

To import and use `logFatal` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logFatal
```

**Signature**

```ts
export declare const logFatal: <A extends string | Cause.Cause<unknown>>(
  messageOrCause: A,
  supplementry?: (A extends string ? Cause.Cause<unknown> : string) | undefined
) => Effect<never, never, void>
```
