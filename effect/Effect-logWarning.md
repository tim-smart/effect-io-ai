# logWarning

Logs messages at the WARNING log level.

**Details**

This function logs messages at the WARNING level, suitable for highlighting
potential issues that are not errors but may require attention. These
messages indicate that something unexpected occurred or might lead to errors
in the future.

To import and use `logWarning` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logWarning
```

**Signature**

```ts
export declare const logWarning: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
