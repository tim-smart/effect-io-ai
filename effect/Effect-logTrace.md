# logTrace

Logs the specified message or cause at the Trace log level.

To import and use `logTrace` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.logTrace
undefined

**Signature**

```ts
export declare const logTrace: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
