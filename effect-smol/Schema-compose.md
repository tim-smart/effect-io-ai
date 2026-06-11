Package: `effect`<br />
Module: `Schema`<br />

## Schema.compose

Type-level representation returned by `decodeTo` without a custom transformation.

**Signature**

```ts
export interface compose<To extends Top, From extends Top> extends decodeTo<To, From> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4963)

Since v3.10.0