# logTrace

Logs the specified message at the trace log level.

To import and use `logTrace` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logTrace
```

**Signature**

```ts
export declare const logTrace: (message: string) => Effect<never, never, void>
```
