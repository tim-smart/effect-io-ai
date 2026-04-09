Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullishOr

Companion type for `OptionFromNullishOr`.

**Signature**

```ts
export interface OptionFromNullishOr<S extends Top> extends decodeTo<Option<toType<S>>, NullishOr<S>> {
  readonly "~rebuild.out": OptionFromNullishOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6967)

Since v4.0.0