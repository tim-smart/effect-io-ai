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
export declare const logInfo: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
