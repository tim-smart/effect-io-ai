Package: `effect`<br />
Module: `Schema`<br />

## Schema.Encoder

A schema that tracks the encoded type `E` and the Effect services required
during encoding (`RE`).

**When to use**

Use when you need to preserve a schema's encoded type and encoding service
requirements, but do not need to constrain its decoded representation or
decoding services.

**See**

- `Codec` for preserving both decoded and encoded type information.
- `Decoder` for the decode-only view.

**Signature**

```ts
export interface Encoder<out E, out RE = never> extends Schema<unknown> {
  readonly "Encoded": E
  readonly "DecodingServices": unknown
  readonly "EncodingServices": RE
  readonly "Rebuild": Encoder<E, RE>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L971)

Since v4.0.0