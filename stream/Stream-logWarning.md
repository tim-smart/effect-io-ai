# logWarning

Logs the specified message at the warning log level.

To import and use `logWarning` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logWarning
```

**Signature**

```ts
export declare const logWarning: (message: string) => Stream<never, never, void>
```
