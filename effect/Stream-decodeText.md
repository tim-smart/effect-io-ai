Package: `effect`<br />
Module: `Stream`<br />

## Stream.decodeText

Decode Uint8Array chunks into a stream of strings using the specified encoding.

**Signature**

```ts
declare const decodeText: { (encoding?: string | undefined): <E, R>(self: Stream<Uint8Array, E, R>) => Stream<string, E, R>; <E, R>(self: Stream<Uint8Array, E, R>, encoding?: string | undefined): Stream<string, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6418)

Since v2.0.0