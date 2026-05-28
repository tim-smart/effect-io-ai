Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.Iso

Computes the iso object type for a struct field map from each field schema's
`Iso` type.

**Details**

The resulting property optionality and mutability follow the same field
modifiers used by `Struct.Type`.

**Signature**

```ts
type { [K in keyof Iso_<F, TypeOptionalKeys<F>, TypeMutableKeys<F>>]: Iso_<F, TypeOptionalKeys<F>, TypeMutableKeys<F>>[K]; } = Simplify<Iso_<F>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2791)

Since v4.0.0