# logTrace

Logs the specified message at the trace log level.

To import and use `logTrace` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logTrace
```

**Signature**

```ts
export declare const logTrace: (message: string) => Stream<never, never, void>
```
