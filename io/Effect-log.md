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
export declare const log: {
  (options?: {
    readonly cause?: Cause.Cause<unknown>
    readonly level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace'
  }): (message: string) => Effect<never, never, void>
  (
    message: string,
    options?: {
      readonly cause?: Cause.Cause<unknown>
      readonly level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace'
    }
  ): Effect<never, never, void>
}
```
