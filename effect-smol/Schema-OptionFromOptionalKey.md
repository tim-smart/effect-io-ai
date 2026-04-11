Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptionalKey

Companion type for `OptionFromOptionalKey`.

**Signature**

```ts
export interface OptionFromOptionalKey<S extends Top> extends decodeTo<Option<toType<S>>, optionalKey<S>> {
  readonly "Rebuild": OptionFromOptionalKey<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7124)

Since v4.0.0