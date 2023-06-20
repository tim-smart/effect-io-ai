# logError

Logs the specified message at the error log level.

To import and use `logError` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logError
```

**Signature**

```ts
export declare const logError: (message: string) => Stream<never, never, void>
```
