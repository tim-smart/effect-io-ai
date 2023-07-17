# withLog

Logs the specified message at the current log level.

To import and use `withLog` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withLog
```

**Signature**

```ts
export declare const withLog: {
  (
    message: string,
    level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace',
    options?: { readonly cause?: Cause.Cause<unknown> }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(
    self: Effect<R, E, A>,
    message: string,
    level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace',
    options?: { readonly cause?: Cause.Cause<unknown> }
  ): Effect<R, E, A>
}
```
