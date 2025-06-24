Package: `effect`<br />
Module: `Stream`<br />

## Stream.encodeText

Encode a stream of strings into a stream of Uint8Array chunks using the specified encoding.

**Signature**

```ts
declare const encodeText: <E, R>(self: Stream<string, E, R>) => Stream<Uint8Array, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6429)

Since v2.0.0