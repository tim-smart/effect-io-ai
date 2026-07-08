Package: `effect`<br />
Module: `Schema`<br />

## Schema.Decoder

A schema that tracks the decoded type `T` and the Effect services required
during decoding (`RD`).

**When to use**

Use when you need to preserve a schema's decoded type and decoding service
requirements, but do not need to constrain its encoded representation or
encoding services.

**See**

- `Codec` for preserving both decoded and encoded type information.
- `Encoder` for the encode-only view.

**Signature**

```ts
export interface Decoder<out T, out RD = never> extends Schema<T> {
  readonly "Encoded": unknown
  readonly "DecodingServices": RD
  readonly "EncodingServices": unknown
  readonly "Rebuild": Decoder<T, RD>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L947)

Since v4.0.0