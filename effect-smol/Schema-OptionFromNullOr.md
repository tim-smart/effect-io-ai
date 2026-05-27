Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullOr

Type-level representation of a schema that decodes `null` as `None` and all
other values as `Some`.

**Signature**

```ts
export interface OptionFromNullOr<S extends Top> extends decodeTo<Option<toType<S>>, NullOr<S>> {
  readonly "Rebuild": OptionFromNullOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7949)

Since v3.10.0