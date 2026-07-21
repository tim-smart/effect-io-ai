Package: `effect`<br />
Module: `Schema`<br />

## Schema.ConstraintDecoder

Lightweight structural constraint for APIs that need decoder type views but
do not need the full schema protocol.

**When to use**

Use when you need to preserve a schema's decoded type and decoding services,
but the API does not constrain the encoded type, encoding services, or call
schema methods such as `annotate`, `check`, `rebuild`, `make`, or
`makeEffect`.

**See**

- `ConstraintCodec` for APIs that need both decoded and encoded codec views.
- `Codec` for the full schema protocol with codec type views.

**Signature**

```ts
export interface ConstraintDecoder<out T, out RD = never> extends ConstraintCodec<T, unknown, RD, unknown> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L733)

Since v4.0.0