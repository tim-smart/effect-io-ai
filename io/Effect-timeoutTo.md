# timeoutTo

Returns an effect that will timeout this effect, returning either the
default value if the timeout elapses before the effect has produced a
value or returning the result of applying the function `onSuccess` to the
success value of the effect.

If the timeout elapses without producing a value, the running effect will
be safely interrupted.

To import and use `timeoutTo` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.timeoutTo
```

**Signature**

```ts
export declare const timeoutTo: {
  <A, B, B1>(options: {
    readonly onTimeout: LazyArg<B1>
    readonly onSuccess: (a: A) => B
    readonly duration: Duration.DurationInput
  }): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B | B1>
  <R, E, A, B, B1>(
    self: Effect<R, E, A>,
    options: {
      readonly onTimeout: LazyArg<B1>
      readonly onSuccess: (a: A) => B
      readonly duration: Duration.DurationInput
    }
  ): Effect<R, E, B | B1>
}
```
