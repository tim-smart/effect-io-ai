Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptionalNullOr

Type-level representation of a schema that decodes a missing key, `undefined`,
or `null` as `None` and all other present values as `Some`.

**Signature**

```ts
export interface OptionFromOptionalNullOr<S extends Top> extends decodeTo<Option<toType<S>>, optional<NullOr<S>>> {
  readonly "Rebuild": OptionFromOptionalNullOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7704)

Since v4.0.0