Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Override

Marks a value as an explicit override for an `Overrideable` schema default.

**Signature**

```ts
declare const Override: <A>(value: A) => A & Brand<"Override">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L533)

Since v4.0.0