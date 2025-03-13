Package: `effect`<br />
Module: `Stream`<br />

## Stream.toReadableStreamEffect

Converts the stream to a `Effect<ReadableStream>`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Signature**

```ts
declare const toReadableStreamEffect: { <A>(options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<ReadableStream<A>, never, R>; <A, E, R>(self: Stream<A, E, R>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): Effect.Effect<ReadableStream<A>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5303)

Since v2.0.0