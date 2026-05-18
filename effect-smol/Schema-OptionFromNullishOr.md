Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullishOr

Type-level representation of a schema that decodes `null` or `undefined` as
`None` and all other values as `Some`.

**Signature**

```ts
export interface OptionFromNullishOr<S extends Top> extends decodeTo<Option<toType<S>>, NullishOr<S>> {
  readonly "Rebuild": OptionFromNullishOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7452)

Since v4.0.0