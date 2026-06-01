Package: `effect`<br />
Module: `Brand`<br />

## Brand.check

Creates a branded type `Constructor` from one or more schema checks.

**When to use**

Use when you need a branded type constructor that performs runtime validation
via schema checks.

**Details**

Calling the returned constructor validates the unbranded value and throws on
failure. Use the returned `option`, `result`, or `is` methods for
non-throwing validation.

**See**

- `nominal` for a brand constructor without runtime validation
- `all` for combining multiple brand constructors

**Signature**

```ts
declare const check: <A extends Brand<any>>(checks_0: SchemaAST.Check<Brand.Unbranded<A>>, ...checks: Array<SchemaAST.Check<Brand.Unbranded<A>>>) => Constructor<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L318)

Since v4.0.0