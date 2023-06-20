# log

Logs the specified message at the current log level.

To import and use `log` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.log
```

**Signature**

```ts
export declare const log: (message: string) => Sink<never, never, unknown, never, void>
```
