Package: `effect`<br />
Module: `Stream`<br />

## Stream.toReadableStream

Converts the stream to a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Signature**

```ts
declare const toReadableStream: { <A>(options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): <E>(self: Stream<A, E>) => ReadableStream<A>; <A, E>(self: Stream<A, E>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): ReadableStream<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5283)

Since v2.0.0