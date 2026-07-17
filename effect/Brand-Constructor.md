Package: `effect`<br />
Module: `Brand`<br />

## Brand.Constructor

A constructor for a branded type that provides validation and safe
construction methods.

**When to use**

Use as the shared callable interface for branded values when an API accepts
or returns a brand constructor and callers need throwing, `Option`, `Result`,
or type-guard validation forms.

**See**

- `nominal` for a constructor without runtime validation
- `make` for creating a constructor from a validation predicate
- `check` for creating a constructor from schema checks
- `all` for combining brand constructors

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
  checks?: readonly [SchemaAST.Check<Brand.Unbranded<B>>, ...Array<SchemaAST.Check<Brand.Unbranded<B>>>] | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L59)

Since v2.0.0