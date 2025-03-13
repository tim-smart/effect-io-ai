Package: `effect`<br />
Module: `Sink`<br />

## Sink.dimapChunks

Transforms both input chunks and result of this sink using the provided
functions.

**Signature**

```ts
declare const dimapChunks: { <In0, In, A, A2>(options: { readonly onInput: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>; readonly onDone: (a: A) => A2; }): <L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In0, L, E, R>; <A, In, L, E, R, In0, A2>(self: Sink<A, In, L, E, R>, options: { readonly onInput: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>; readonly onDone: (a: A) => A2; }): Sink<A2, In0, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L403)

Since v2.0.0