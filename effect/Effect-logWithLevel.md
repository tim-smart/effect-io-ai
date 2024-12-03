# logWithLevel

Logs the specified message or cause at the specified log level.

To import and use `logWithLevel` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logWithLevel
```

**Signature**

```ts
export declare const logWithLevel: (level: LogLevel, ...message: ReadonlyArray<any>) => Effect<void>
```
