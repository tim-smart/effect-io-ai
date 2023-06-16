# someOrElse

Extracts the optional value, or returns the given 'orElse'.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.someOrElse`.

### Signature

```typescript
export declare const someOrElse: {
  <B>(orElse: LazyArg<B>): <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, E, B | A>
  <R, E, A, B>(self: Effect<R, E, Option.Option<A>>, orElse: LazyArg<B>): Effect<R, E, A | B>
}
```
