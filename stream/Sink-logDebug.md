# logDebug

Logs the specified message at the debug log level.

To import and use `logDebug` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logDebug
```

**Signature**

```ts
export declare const logDebug: (message: string) => Sink<never, never, unknown, never, void>
```
