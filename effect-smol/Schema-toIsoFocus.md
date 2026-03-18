Package: `effect`<br />
Module: `Schema`<br />

## Schema.toIsoFocus

Returns an identity `Iso` over the schema's focus (`Iso`) side.

**Signature**

```ts
declare const toIsoFocus: <S extends Top>(_: S) => Optic_.Iso<S["Iso"], S["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10908)

Since v4.0.0