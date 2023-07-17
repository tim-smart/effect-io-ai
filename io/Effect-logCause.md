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
  (
    level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace',
    options?: { readonly message?: string }
  ): (cause: Cause.Cause<unknown>) => Effect<never, never, void>
  (
    cause: Cause.Cause<unknown>,
    level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace',
    options?: { readonly message?: string }
  ): Effect<never, never, void>
}
```
