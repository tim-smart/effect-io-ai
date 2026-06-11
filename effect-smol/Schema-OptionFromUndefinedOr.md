Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromUndefinedOr

Type-level representation returned by `OptionFromUndefinedOr`.

**Signature**

```ts
export interface OptionFromUndefinedOr<S extends Top> extends decodeTo<Option<toType<S>>, UndefinedOr<S>> {
  readonly "Rebuild": OptionFromUndefinedOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8190)

Since v3.10.0