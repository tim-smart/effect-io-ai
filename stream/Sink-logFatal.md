# logFatal

Logs the specified message at the fatal log level.

To import and use `logFatal` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logFatal
```

**Signature**

```ts
export declare const logFatal: (message: string) => Sink<never, never, unknown, never, void>
```
