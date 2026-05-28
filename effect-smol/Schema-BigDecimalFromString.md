Package: `effect`<br />
Module: `Schema`<br />

## Schema.BigDecimalFromString

Type-level representation of a transformation schema that decodes strings into
`BigDecimal` values.

**Signature**

```ts
export interface BigDecimalFromString extends decodeTo<BigDecimal, String> {
  readonly "Rebuild": BigDecimalFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10314)

Since v4.0.0