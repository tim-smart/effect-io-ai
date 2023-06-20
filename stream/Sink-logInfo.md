# logInfo

Logs the specified message at the info log level.

To import and use `logInfo` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logInfo
```

**Signature**

```ts
export declare const logInfo: (message: string) => Sink<never, never, unknown, never, void>
```
