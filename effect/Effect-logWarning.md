# logWarning

Logs the specified message or cause at the Warning log level.

To import and use `logWarning` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.logWarning
undefined

**Signature**

```ts
export declare const logWarning: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
