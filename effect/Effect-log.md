# log

Logs the specified message or cause at the current log level.

You can set the current log level using `FiberRef.currentLogLevel`.

To import and use `log` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.log
```

**Signature**

```ts
export declare const log: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
