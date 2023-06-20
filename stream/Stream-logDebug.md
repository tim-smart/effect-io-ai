# logDebug

Logs the specified message at the debug log level.

To import and use `logDebug` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logDebug
```

**Signature**

```ts
export declare const logDebug: (message: string) => Stream<never, never, void>
```
