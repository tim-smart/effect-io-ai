## provideService

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

**Signature**

```ts
declare const provideService: { <I, S>(tag: Context.Tag<I, S>, resource: NoInfer<S>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: Stream<A, E, R>, tag: Context.Tag<I, S>, resource: NoInfer<S>): Stream<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3649)

Since v2.0.0