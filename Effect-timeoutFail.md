# timeoutFail

The same as `timeout`, but instead of producing a `None` in the event of
timeout, it will produce the specified error.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const timeoutFail: {
  <E1>(evaluate: LazyArg<E1>, duration: Duration.Duration): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E1 | E, A>
  <R, E, A, E1>(self: Effect<R, E, A>, evaluate: LazyArg<E1>, duration: Duration.Duration): Effect<R, E | E1, A>
}
```
