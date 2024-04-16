# logFatal

Logs the specified message or cause at the Fatal log level.

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
