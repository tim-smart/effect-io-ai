# timeoutFailCause

The same as `timeout`, but instead of producing a `None` in the event of
timeout, it will produce the specified failure.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.timeoutFailCause`.

### Signature

```typescript
export declare const timeoutFailCause: {
  <E1>(evaluate: LazyArg<Cause.Cause<E1>>, duration: Duration.Duration): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E, A>
  <R, E, A, E1>(self: Effect<R, E, A>, evaluate: LazyArg<Cause.Cause<E1>>, duration: Duration.Duration): Effect<
    R,
    E | E1,
    A
  >
}
```
