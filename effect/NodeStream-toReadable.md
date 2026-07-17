Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.toReadable

Converts an Effect `Stream` into a Node `Readable`, using the caller's
Effect context to run the stream and destroying the readable if the stream
fails.

**Signature**

```ts
declare const toReadable: <E, R>(stream: Stream.Stream<string | Uint8Array, E, R>) => Effect.Effect<Readable, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node-shared/src/NodeStream.ts#L190)

Since v4.0.0