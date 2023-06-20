# logInfo

Logs the specified message at the info log level.

To import and use `logInfo` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logInfo
```

**Signature**

```ts
export declare const logInfo: (message: string) => Stream<never, never, void>
```
