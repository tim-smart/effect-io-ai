# timeoutFailCause

The same as `timeout`, but instead of producing a `None` in the event of
timeout, it will produce the specified failure.

To import and use `timeoutFailCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeoutFailCause
```

**Signature**

```ts
export declare const timeoutFailCause: {
  <E1>(options: {
    readonly onTimeout: LazyArg<Cause.Cause<E1>>
    readonly duration: Duration.DurationInput
  }): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E1 | E, R>
  <A, E, R, E1>(
    self: Effect<A, E, R>,
    options: { readonly onTimeout: LazyArg<Cause.Cause<E1>>; readonly duration: Duration.DurationInput }
  ): Effect<A, E | E1, R>
}
```
