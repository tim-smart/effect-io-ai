Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromUndefinedOr

Companion type for `OptionFromUndefinedOr`.

**Signature**

```ts
export interface OptionFromUndefinedOr<S extends Top> extends decodeTo<Option<toType<S>>, UndefinedOr<S>> {
  readonly "Rebuild": OptionFromUndefinedOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7131)

Since v4.0.0