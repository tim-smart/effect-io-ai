# provideService

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(tag: T, resource: Context.Tag.Service<T>): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<Exclude<R, Context.Tag.Identifier<T>>, E, A>
  <R, E, A, T extends Context.Tag<any, any>>(self: Stream<R, E, A>, tag: T, resource: Context.Tag.Service<T>): Stream<
    Exclude<R, Context.Tag.Identifier<T>>,
    E,
    A
  >
}
```
