# provideServiceStream

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const provideServiceStream: {
  <T extends Context.Tag<any, any>, R2, E2>(tag: T, stream: Stream<R2, E2, Context.Tag.Service<T>>): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | Exclude<R, Context.Tag.Identifier<T>>, E2 | E, A>
  <R, E, A, T extends Context.Tag<any, any>, R2, E2>(
    self: Stream<R, E, A>,
    tag: T,
    stream: Stream<R2, E2, Context.Tag.Service<T>>
  ): Stream<R2 | Exclude<R, Context.Tag.Identifier<T>>, E | E2, A>
}
```
