# timeoutFail

The same as `timeout`, but instead of producing a `None` in the event of
timeout, it will produce the specified error.

To import and use `timeoutFail` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.timeoutFail
```

**Signature**

```ts
export declare const timeoutFail: {
  <E1>(options: { readonly onTimeout: LazyArg<E1>; readonly duration: Duration.DurationInput }): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E, A>
  <R, E, A, E1>(
    self: Effect<R, E, A>,
    options: { readonly onTimeout: LazyArg<E1>; readonly duration: Duration.DurationInput }
  ): Effect<R, E | E1, A>
}
```
