Package: `effect`<br />
Module: `Brand`<br />

## Brand.make

Returns a `Constructor` that can construct a branded type from an unbranded
value using the provided `filter` predicate as validation of the input data.

**When to use**

Use when you want validation while constructing the branded type.

**See**

- `nominal` for a brand constructor that performs no validation.

**Signature**

```ts
declare const make: <A extends Brand<any>>(filter: (unbranded: Brand.Unbranded<A>) => Schema.FilterOutput) => Constructor<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L293)

Since v4.0.0