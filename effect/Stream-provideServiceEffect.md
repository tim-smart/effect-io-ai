## provideServiceEffect

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

**Signature**

```ts
declare const provideServiceEffect: { <I, S, E2, R2>(tag: Context.Tag<I, S>, effect: Effect.Effect<NoInfer<S>, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | Exclude<R, I>>; <A, E, R, I, S, E2, R2>(self: Stream<A, E, R>, tag: Context.Tag<I, S>, effect: Effect.Effect<NoInfer<S>, E2, R2>): Stream<A, E2 | E, R2 | Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3661)

Since v2.0.0