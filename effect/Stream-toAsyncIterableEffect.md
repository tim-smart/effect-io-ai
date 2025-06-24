Package: `effect`<br />
Module: `Stream`<br />

## Stream.toAsyncIterableEffect

Converts the stream to a `AsyncIterable` capturing the required dependencies.

**Signature**

```ts
declare const toAsyncIterableEffect: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<AsyncIterable<A>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5387)

Since v3.15.0