# timeoutFailCause

The same as `timeout`, but instead of producing a `None` in the event of
timeout, it will produce the specified failure.

To import and use `timeoutFailCause` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.timeoutFailCause
```

**Signature**

```ts
export declare const timeoutFailCause: {
  <E1>(options: { readonly onTimeout: LazyArg<Cause.Cause<E1>>; readonly duration: Duration.DurationInput }): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E, A>
  <R, E, A, E1>(
    self: Effect<R, E, A>,
    options: { readonly onTimeout: LazyArg<Cause.Cause<E1>>; readonly duration: Duration.DurationInput }
  ): Effect<R, E | E1, A>
}
```
