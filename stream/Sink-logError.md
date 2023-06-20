# logError

Logs the specified message at the error log level.

To import and use `logError` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logError
```

**Signature**

```ts
export declare const logError: (message: string) => Sink<never, never, unknown, never, void>
```
