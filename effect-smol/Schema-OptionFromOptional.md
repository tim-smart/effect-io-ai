Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptional

Type-level representation returned by `OptionFromOptional`.

**Signature**

```ts
export interface OptionFromOptional<S extends Constraint> extends decodeTo<Option<toType<S>>, optional<S>> {
  readonly "Rebuild": OptionFromOptional<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8660)

Since v4.0.0