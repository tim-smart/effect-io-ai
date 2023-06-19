# collect

Performs a filter and map in a single step.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const collect: {
  <A, B>(pf: (a: A) => Option.Option<B>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, B>(self: Stream<R, E, A>, pf: (a: A) => Option.Option<B>): Stream<R, E, B>
}
```
