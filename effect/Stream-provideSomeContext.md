Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideSomeContext

Provides the stream with some of its required context, which eliminates its
dependency on `R`.

**Signature**

```ts
declare const provideSomeContext: { <R2>(context: Context.Context<R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, R2>>; <A, E, R, R2>(self: Stream<A, E, R>, context: Context.Context<R2>): Stream<A, E, Exclude<R, R2>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3639)

Since v3.16.9