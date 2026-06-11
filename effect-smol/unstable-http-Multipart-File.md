Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.File

Multipart file part.

**Gotchas**

The file content is exposed as a byte stream. `contentEffect` collects the full
file into memory and should be used only when the file size is acceptable.

**Signature**

```ts
export interface File extends Part.Proto {
  readonly _tag: "File"
  readonly key: string
  readonly name: string
  readonly contentType: string
  readonly content: Stream.Stream<Uint8Array, MultipartError>
  readonly contentEffect: Effect.Effect<Uint8Array, MultipartError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L124)

Since v4.0.0