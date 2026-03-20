Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptionalNullOr

Schema type for `OptionFromOptionalNullOr`.

**Signature**

```ts
export interface OptionFromOptionalNullOr<S extends Top> extends decodeTo<Option<toType<S>>, optional<NullOr<S>>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7061)

Since v4.0.0