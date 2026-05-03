Package: `effect`<br />
Module: `Schema`<br />

## Schema.toIsoSource

Returns an identity `Iso` over the schema's source (`Type`) side.

**Signature**

```ts
declare const toIsoSource: <S extends Top>(_: S) => Optic_.Iso<S["Type"], S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11634)

Since v4.0.0