# logTrace

Logs the specified message at the trace log level.

To import and use `logTrace` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logTrace
```

**Signature**

```ts
export declare const logTrace: (message: string) => Sink<never, never, unknown, never, void>
```
