Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideContext

Provides the stream with its required context, which eliminates its
dependency on `R`.

**Signature**

```ts
declare const provideContext: { <R>(context: Context.Context<R>): <A, E>(self: Stream<A, E, R>) => Stream<A, E>; <A, E, R>(self: Stream<A, E, R>, context: Context.Context<R>): Stream<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3626)

Since v2.0.0