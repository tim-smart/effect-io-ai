# logFatal

Logs messages at the FATAL log level.

**Details**

This function logs messages at the FATAL level, suitable for reporting
critical errors that cause the application to terminate or stop functioning.
These logs are typically used for unrecoverable errors that require immediate
attention.

To import and use `logFatal` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logFatal
```

**Signature**

```ts
export declare const logFatal: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
