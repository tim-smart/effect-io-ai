Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.toReadableNever

Converts a service-free Effect `Stream` into a Node `Readable` using an
empty Effect context.

**Signature**

```ts
declare const toReadableNever: <E>(stream: Stream.Stream<string | Uint8Array, E, never>) => Readable
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L211)

Since v4.0.0