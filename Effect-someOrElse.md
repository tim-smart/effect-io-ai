# someOrElse

Extracts the optional value, or returns the given 'orElse'.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const someOrElse: {
  <B>(orElse: LazyArg<B>): <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, E, B | A>
  <R, E, A, B>(self: Effect<R, E, Option.Option<A>>, orElse: LazyArg<B>): Effect<R, E, A | B>
}
```
