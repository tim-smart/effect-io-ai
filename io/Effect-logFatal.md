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
export declare const logFatal: <A>(
  messageOrCause: A,
  supplementary?: (A extends Cause.Cause<any> ? unknown : Cause.Cause<unknown>) | undefined
) => Effect<never, never, void>
```
