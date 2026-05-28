Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptionalKey

Type-level representation of a schema that decodes a missing object key as
`None` and a present key as `Some`.

**Signature**

```ts
export interface OptionFromOptionalKey<S extends Top> extends decodeTo<Option<toType<S>>, optionalKey<S>> {
  readonly "Rebuild": OptionFromOptionalKey<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8288)

Since v4.0.0