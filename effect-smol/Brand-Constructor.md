Package: `effect`<br />
Module: `Brand`<br />

## Brand.Constructor

A constructor for a branded type that provides validation and safe
construction methods.

**Signature**

```ts
export interface Constructor<in out B extends Brand<any>> {
  /**
   * Constructs a branded type from a value of type `Unbranded<B>`, throwing an
   * error if the provided value is not valid.
   */
  (unbranded: Brand.Unbranded<B>): B
  /**
   * Constructs a branded type from a value of type `Unbranded<B>`, returning
   * `Some<B>` if the provided value is valid, `None` otherwise.
   */
  option(unbranded: Brand.Unbranded<B>): Option.Option<B>
  /**
   * Constructs a branded type from a value of type `Unbranded<B>`, returning
   * `Success<B>` if the provided value is valid, `Failure<BrandError>`
   * otherwise.
   */
  result(unbranded: Brand.Unbranded<B>): Result.Result<B, BrandError>
  /**
   * Attempts to refine the provided value of type `Unbranded<B>`, returning
   * `true` if the provided value is a valid branded type, `false` otherwise.
   */
  is(unbranded: Brand.Unbranded<B>): unbranded is Brand.Unbranded<B> & B

  /**
   * The checks that are applied to the branded type.
   *
   * @internal
   */
  checks?: readonly [AST.Check<Brand.Unbranded<B>>, ...Array<AST.Check<Brand.Unbranded<B>>>] | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L36)

Since v2.0.0