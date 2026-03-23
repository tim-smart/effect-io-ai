Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullOr

Schema type for `OptionFromNullOr`.

**Signature**

```ts
export interface OptionFromNullOr<S extends Top> extends decodeTo<Option<toType<S>>, NullOr<S>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6905)

Since v4.0.0