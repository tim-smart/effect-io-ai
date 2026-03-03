Package: `effect`<br />
Module: `Schema`<br />

## Schema.Codec

A schema that tracks both the decoded type `T` and the encoded representation `E`.

When to use:
- You want a schema in APIs that may both decode and encode.
- You need to preserve/describe the encoded representation (`Encoded`) in types.
- You need to model required services for decoding (`RD`) and encoding (`RE`).

Behavior:
- This is a typing surface; concrete schema values are created by the various constructors in this module.
- For decode-only or encode-only APIs, prefer `Decoder` or `Encoder`.

**Signature**

```ts
export interface Codec<out T, out E = T, out RD = never, out RE = never> extends Schema<T> {
  readonly "Encoded": E
  readonly "DecodingServices": RD
  readonly "EncodingServices": RE
  readonly "~rebuild.out": Codec<T, E, RD, RE>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L399)

Since v4.0.0