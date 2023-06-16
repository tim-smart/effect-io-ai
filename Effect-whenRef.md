# whenRef

Executes this workflow when the value of the `Ref` satisfies the predicate.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.whenRef`.

### Signature

```typescript
export declare const whenRef: {
  <S>(ref: Ref.Ref<S>, predicate: Predicate<S>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, [S, Option.Option<A>]>
  <R, E, A, S>(self: Effect<R, E, A>, ref: Ref.Ref<S>, predicate: Predicate<S>): Effect<R, E, [S, Option.Option<A>]>
}
```
