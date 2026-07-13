Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullOr

Type-level representation returned by `OptionFromNullOr`.

**Signature**

```ts
export interface OptionFromNullOr<S extends Constraint> extends decodeTo<Option<toType<S>>, NullOr<S>> {
  readonly "Rebuild": OptionFromNullOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8616)

Since v3.10.0