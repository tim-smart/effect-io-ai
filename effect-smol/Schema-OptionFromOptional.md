Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptional

Companion type for `OptionFromOptional`.

**Signature**

```ts
export interface OptionFromOptional<S extends Top> extends decodeTo<Option<toType<S>>, optional<S>> {
  readonly "~rebuild.out": OptionFromOptional<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7034)

Since v4.0.0