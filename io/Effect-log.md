# log

Logs the specified message. You can optionally provide the log level
and a cause.

To import and use `log` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.log
```

**Signature**

```ts
export declare const log: (
  message: string,
  level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace',
  options?: { readonly cause?: Cause.Cause<unknown> }
) => Effect<never, never, void>
```
