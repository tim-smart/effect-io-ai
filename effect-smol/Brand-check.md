Package: `effect`<br />
Module: `Brand`<br />

## Brand.check

Creates a branded type `Constructor` from one or more schema checks.

**Details**

Calling the returned constructor validates the unbranded value and throws on
failure. Use the returned `option`, `result`, or `is` methods for
non-throwing validation.

**Signature**

```ts
declare const check: <A extends Brand<any>>(checks_0: AST.Check<Brand.Unbranded<A>>, ...checks: Array<AST.Check<Brand.Unbranded<A>>>) => Constructor<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L234)

Since v4.0.0