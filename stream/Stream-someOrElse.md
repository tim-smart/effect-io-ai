# someOrElse

Extracts the optional value, or returns the given 'default'.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const someOrElse: {
  <A2>(fallback: LazyArg<A2>): <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, E, A2 | A>
  <R, E, A, A2>(self: Stream<R, E, Option.Option<A>>, fallback: LazyArg<A2>): Stream<R, E, A | A2>
}
```
