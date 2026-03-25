Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullishOr

Schema type for `OptionFromNullishOr`.

**Signature**

```ts
export interface OptionFromNullishOr<S extends Top> extends decodeTo<Option<toType<S>>, NullishOr<S>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6971)

Since v4.0.0