# logDebug

Logs the specified message or cause at the Debug log level.

To import and use `logDebug` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logDebug
```

**Signature**

```ts
export declare const logDebug: <A>(
  messageOrCause: A,
  supplementary?: (A extends Cause.Cause<any> ? unknown : Cause.Cause<unknown>) | undefined
) => Effect<void>
```
