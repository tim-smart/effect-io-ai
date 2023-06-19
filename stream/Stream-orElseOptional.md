# orElseOptional

Switches to the provided stream in case this one fails with the `None`
value.

See also `Stream.catchAll`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const orElseOptional: {
  <R2, E2, A2>(that: LazyArg<Stream<R2, Option.Option<E2>, A2>>): <R, E, A>(
    self: Stream<R, Option.Option<E>, A>
  ) => Stream<R2 | R, Option.Option<E2 | E>, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, Option.Option<E>, A>, that: LazyArg<Stream<R2, Option.Option<E2>, A2>>): Stream<
    R | R2,
    Option.Option<E | E2>,
    A | A2
  >
}
```
