# logInfo

Logs messages at the INFO log level.

**Details**

This function logs messages at the INFO level, suitable for general
application events or operational messages. INFO logs are shown by default
and are commonly used for highlighting normal, non-error operations.

To import and use `logInfo` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logInfo
```

**Signature**

```ts
export declare const logInfo: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
