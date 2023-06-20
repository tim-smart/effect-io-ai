# logFatal

Logs the specified message at the fatal log level.

To import and use `logFatal` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logFatal
```

**Signature**

```ts
export declare const logFatal: (message: string) => Stream<never, never, void>
```
