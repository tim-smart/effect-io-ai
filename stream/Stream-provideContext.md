# provideContext

Provides the stream with its required context, which eliminates its
dependency on `R`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <E, A>(self: Stream<R, E, A>) => Stream<never, E, A>
  <E, A, R>(self: Stream<R, E, A>, context: Context.Context<R>): Stream<never, E, A>
}
```
