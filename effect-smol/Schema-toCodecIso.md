Package: `effect`<br />
Module: `Schema`<br />

## Schema.toCodecIso

Derives an isomorphism codec from a schema. The encoded form is the
schema's `Iso` type — the intermediate representation used for round-tripping.

**Signature**

```ts
declare const toCodecIso: <S extends Top>(schema: S) => Codec<S["Type"], S["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11230)

Since v4.0.0