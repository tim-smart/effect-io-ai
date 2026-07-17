Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullishOr

Type-level representation returned by `OptionFromNullishOr`.

**Signature**

```ts
export interface OptionFromNullishOr<S extends Constraint> extends decodeTo<Option<toType<S>>, NullishOr<S>> {
  readonly "Rebuild": OptionFromNullishOr<S>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8673)

Since v3.10.0