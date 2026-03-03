Package: `effect`<br />
Module: `Schema`<br />

## Schema.revealBottom

Reveals the complete Bottom interface type of a schema, exposing all 14 type
parameters.

**Signature**

```ts
declare const revealBottom: <S extends Top>(bottom: S) => Bottom<S["Type"], S["Encoded"], S["DecodingServices"], S["EncodingServices"], S["ast"], S["~rebuild.out"], S["~type.make.in"], S["Iso"], S["~type.parameters"], S["~type.make"], S["~type.mutability"], S["~type.optionality"], S["~type.constructor.default"], S["~encoded.mutability"], S["~encoded.optionality"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L240)

Since v4.0.0