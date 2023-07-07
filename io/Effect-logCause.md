# logCause

Logs the specified cause at the current log level.

To import and use `logCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logCause
```

**Signature**

```ts
export declare const logCause: {
  (options?: {
    readonly message?: string
    readonly level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace'
  }): (cause: Cause.Cause<unknown>) => Effect<never, never, void>
  (
    cause: Cause.Cause<unknown>,
    options?: {
      readonly message?: string
      readonly level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace'
    }
  ): Effect<never, never, void>
}
```
