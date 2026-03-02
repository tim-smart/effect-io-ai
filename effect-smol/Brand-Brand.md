Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand

A generic interface that defines a branded type.

**Signature**

```ts
export interface Brand<in out Keys extends string> {
  readonly [TypeId]: {
    readonly [K in Keys]: Keys
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L23)

Since v2.0.0