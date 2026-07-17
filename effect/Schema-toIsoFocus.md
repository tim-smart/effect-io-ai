Package: `effect`<br />
Module: `Schema`<br />

## Schema.toIsoFocus

Returns an identity `Iso` over the schema's focus (`Iso`) side.

**Signature**

```ts
declare const toIsoFocus: <S extends Constraint>(_: S) => Optic_.Iso<S["Iso"], S["Iso"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13991)

Since v4.0.0