Package: `effect`<br />
Module: `Schema`<br />

## Schema.toIso

Derives an `Iso` optic from a schema that isomorphically converts between
the schema's `Type` and its `Iso` (intermediate / serialized form).

**Signature**

```ts
declare const toIso: <S extends Top>(schema: S) => Optic_.Iso<S["Type"], S["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11428)

Since v4.0.0