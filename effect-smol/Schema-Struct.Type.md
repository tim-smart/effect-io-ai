Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.Type

Computes the decoded object type for a struct field map.

**Details**

Field schemas contribute their decoded `Type`. `optionalKey` and `optional`
produce optional properties, while `mutableKey` produces writable properties.

**Signature**

```ts
type { [K in keyof Type_<F, TypeOptionalKeys<F>, TypeMutableKeys<F>>]: Type_<F, TypeOptionalKeys<F>, TypeMutableKeys<F>>[K]; } = Simplify<Type_<F>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2917)

Since v3.10.0