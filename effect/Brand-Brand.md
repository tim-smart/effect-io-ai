## Brand

A generic interface that defines a branded type.

**Signature**

```ts
export interface Brand<in out K extends string | symbol> {
  readonly [BrandTypeId]: {
    readonly [k in K]: K
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L56)

Since v2.0.0