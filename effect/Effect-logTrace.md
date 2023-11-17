# logTrace

Logs the specified message or cause at the Trace log level.

To import and use `logTrace` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logTrace
```

**Signature**

```ts
export declare const logTrace: <A>(
  messageOrCause: A,
  supplementary?: (A extends Cause.Cause<any> ? unknown : Cause.Cause<unknown>) | undefined
) => Effect<never, never, void>
```
