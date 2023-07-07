# withLogCause

Logs any Cause of failure for this effect with the given `message` and `level`.

To import and use `withLogCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withLogCause
```

**Signature**

```ts
export declare const withLogCause: {
  (options?: {
    readonly message?: string
    readonly level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace'
  }): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(
    self: Effect<R, E, A>,
    options?: {
      readonly message?: string
      readonly level?: 'None' | 'All' | 'Fatal' | 'Error' | 'Warning' | 'Info' | 'Debug' | 'Trace'
    }
  ): Effect<R, E, A>
}
```
