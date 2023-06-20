# log

Logs the specified message at the current log level.

To import and use `log` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.log
```

**Signature**

```ts
export declare const log: (message: string) => Stream<never, never, void>
```
