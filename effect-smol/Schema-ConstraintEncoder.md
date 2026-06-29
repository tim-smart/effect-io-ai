Package: `effect`<br />
Module: `Schema`<br />

## Schema.ConstraintEncoder

Lightweight structural constraint for APIs that need encoder type views but
do not need the full schema protocol.

**When to use**

Use when you need to preserve a schema's encoded type and encoding services,
but the API does not constrain the decoded type, decoding services, or call
schema methods such as `annotate`, `check`, `rebuild`, `make`, or
`makeEffect`.

**See**

- `ConstraintCodec` for APIs that need both decoded and encoded codec views.
- `Codec` for the full schema protocol with codec type views.

**Signature**

```ts
export interface ConstraintEncoder<out E, out RE = never> extends ConstraintCodec<unknown, E, unknown, RE> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L751)

Since v4.0.0