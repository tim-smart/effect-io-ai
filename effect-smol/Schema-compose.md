Package: `effect`<br />
Module: `Schema`<br />

## Schema.compose

Type-level representation returned by `decodeTo` without a custom transformation.

**Signature**

```ts
export interface compose<To extends Constraint, From extends Constraint> extends decodeTo<To, From> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5407)

Since v3.10.0