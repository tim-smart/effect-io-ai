# logInfo

Logs the specified message or cause at the Info log level.

To import and use `logInfo` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logInfo
```

**Signature**

```ts
export declare const logInfo: <A>(
  messageOrCause: A,
  supplementary?: (A extends Cause.Cause<any> ? unknown : Cause.Cause<unknown>) | undefined
) => Effect<void>
```
