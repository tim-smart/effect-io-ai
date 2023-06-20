# logWarning

Logs the specified message at the warning log level.

To import and use `logWarning` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logWarning
```

**Signature**

```ts
export declare const logWarning: (message: string) => Sink<never, never, unknown, never, void>
```
