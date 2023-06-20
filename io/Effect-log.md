# log

Logs the specified message at the current log level.

To import and use `log` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.log
```

**Signature**

```ts
export declare const log: (message: string) => Effect<never, never, void>
```
