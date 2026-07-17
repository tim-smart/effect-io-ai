Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.collectUint8Array

Runs a channel of byte chunks and collects all output into a single
`Uint8Array`.

**Gotchas**

This materializes the full content in memory.

**Signature**

```ts
declare const collectUint8Array: <OE, OD, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, OE, OD, unknown, unknown, unknown, R>) => Effect.Effect<Uint8Array<ArrayBuffer>, OE, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L609)

Since v4.0.0