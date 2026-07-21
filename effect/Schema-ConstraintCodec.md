Package: `effect`<br />
Module: `Schema`<br />

## Schema.ConstraintCodec

Lightweight structural constraint for APIs that need codec type views but do
not need the full schema protocol.

**When to use**

Use when you need to preserve decoded type, encoded type, and service
requirements for a schema value, but the API does not call schema methods
such as `annotate`, `check`, `rebuild`, `make`, or `makeEffect`.

**See**

- `Constraint` for the generic lightweight schema constraint.
- `Codec` for the full schema protocol with codec type views.

**Signature**

```ts
export interface ConstraintCodec<out T, out E = T, out RD = never, out RE = never> extends Constraint {
  readonly "Type": T
  readonly "Encoded": E
  readonly "DecodingServices": RD
  readonly "EncodingServices": RE
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L709)

Since v4.0.0