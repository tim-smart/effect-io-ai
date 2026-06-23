Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.Type

Computes the decoded object type for a struct field map.

**Details**

Field schemas contribute their decoded `Type`. `optionalKey` and `optional`
produce optional properties, while `mutableKey` produces writable properties.

**Signature**

```ts
type Type<F> = View<F, "Type">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3199)

Since v3.10.0