Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromBrand

Creates a branded schema from a `Brand.Constructor`, applying the
constructor's checks and brand tag to the underlying schema.

**Signature**

```ts
declare const fromBrand: <A extends Brand.Brand<any>>(identifier: string, ctor: Brand.Constructor<A>) => <S extends Top & { readonly "Type": Brand.Brand.Unbranded<A>; }>(self: S) => brand<S["~rebuild.out"], Brand.Brand.Keys<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3750)

Since v4.0.0