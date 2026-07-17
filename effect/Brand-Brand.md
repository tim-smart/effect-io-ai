Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand

A generic interface that defines a branded type.

**When to use**

Use to define a branded type such as `number & Brand<"Positive">` when
TypeScript should keep structurally identical values separate without
changing their runtime value.

**See**

- `Branded` for applying a brand key to a base type
- `Constructor` for validating or constructing branded values

**Signature**

```ts
export interface Brand<in out Keys extends string> {
  readonly [TypeId]: {
    readonly [K in Keys]: Keys
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L35)

Since v2.0.0