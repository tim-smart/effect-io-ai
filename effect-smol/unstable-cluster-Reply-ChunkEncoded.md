Package: `effect`<br />
Module: `Reply`<br />

## Reply.ChunkEncoded

Wire-format representation of a streaming reply chunk, including the request id,
reply id, sequence number, and non-empty encoded values.

**Signature**

```ts
export interface ChunkEncoded {
  readonly _tag: "Chunk"
  readonly requestId: string
  readonly id: string
  readonly sequence: number
  readonly values: NonEmptyReadonlyArray<unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reply.ts#L163)

Since v4.0.0