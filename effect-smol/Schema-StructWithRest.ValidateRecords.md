Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.ValidateRecords

Validates that the records are compatible with the struct.

**Signature**

```ts
type ValidateRecords<S, Records> = [
    | IncompatibleSideKeys<S, Records, "Type">
    | IncompatibleSideKeys<S, Records, "Encoded">
    | IncompatibleSideKeys<S, Records, "Iso">
    | IncompatibleSideKeys<S, Records, "~type.make">
  ] extends [never] ? unknown
    : {
      "incompatible index signatures":
        | IncompatibleSideKeys<S, Records, "Type">
        | IncompatibleSideKeys<S, Records, "Encoded">
        | IncompatibleSideKeys<S, Records, "Iso">
        | IncompatibleSideKeys<S, Records, "~type.make">
    }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3774)

Since v4.0.0