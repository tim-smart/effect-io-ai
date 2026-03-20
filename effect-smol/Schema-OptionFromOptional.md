Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptional

Schema type for `OptionFromOptional`.

**Signature**

```ts
export interface OptionFromOptional<S extends Top> extends decodeTo<Option<toType<S>>, optional<S>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7030)

Since v4.0.0