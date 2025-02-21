# logError

Logs messages at the ERROR log level.

**Details**

This function logs messages at the ERROR level, suitable for reporting
application errors or failures. These logs are typically used for unexpected
issues that need immediate attention.

To import and use `logError` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logError
```

**Signature**

```ts
export declare const logError: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
