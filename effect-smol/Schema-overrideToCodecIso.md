Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToCodecIso

**Technical Note**

This annotation cannot be added to `Annotations.Bottom` because it changes
the schema type.

**Signature**

```ts
declare const overrideToCodecIso: <S extends Top, Iso>(to: Codec<Iso>, transformation: { readonly decode: Getter.Getter<S["Type"], Iso>; readonly encode: Getter.Getter<Iso, S["Type"]>; }) => (schema: S) => overrideToCodecIso<S, Iso>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9021)

Since v4.0.0