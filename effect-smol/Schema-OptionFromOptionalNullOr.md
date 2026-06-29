Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptionalNullOr

Type-level representation returned by `OptionFromOptionalNullOr`.

**Signature**

```ts
export interface OptionFromOptionalNullOr<S extends Constraint>
  extends decodeTo<Option<toType<S>>, optional<NullOr<S>>>
{
  readonly "Rebuild": OptionFromOptionalNullOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8711)

Since v4.0.0