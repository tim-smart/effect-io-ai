Package: `effect`<br />
Module: `Schema`<br />

## Schema.compose

The type produced by `decodeTo` when called without a custom transformation (passthrough composition).

Equivalent to `decodeTo` with `RD = never` and `RE = never`, meaning the schemas
are composed using their natural encoding/decoding chain.

**See**

- `decodeTo` for the transformation variant

**Signature**

```ts
export interface compose<To extends Top, From extends Top> extends decodeTo<To, From> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4022)

Since v4.0.0