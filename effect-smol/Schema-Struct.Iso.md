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
type Iso<F> = View<F, "Iso">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3234)

Since v4.0.0