Package: `effect`<br />
Module: `Brand`<br />

## Brand.make

Returns a `Constructor` that can construct a branded type from an unbranded
value using the provided `filter` predicate as validation of the input data.

**When to use**

Use when you want validation while constructing the branded type. If you
don't want to perform any validation but only distinguish between two values
of the same type but with different meanings, see `nominal`.

**Signature**

```ts
declare const make: <A extends Brand<any>>(filter: (unbranded: Brand.Unbranded<A>) => Schema.FilterOutput) => Constructor<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L291)

Since v4.0.0