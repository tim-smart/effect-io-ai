# logError

Logs the specified message or cause at the Error log level.

To import and use `logError` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.logError
undefined

**Signature**

```ts
export declare const logError: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
