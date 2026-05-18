Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromUndefinedOr

Type-level representation of a schema that decodes `undefined` as `None` and
all other values as `Some`.

**Signature**

```ts
export interface OptionFromUndefinedOr<S extends Top> extends decodeTo<Option<toType<S>>, UndefinedOr<S>> {
  readonly "Rebuild": OptionFromUndefinedOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7420)

Since v4.0.0