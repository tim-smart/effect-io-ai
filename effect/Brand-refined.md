# refined

Returns a `Brand.Constructor` that can construct a branded type from an unbranded value using the provided `refinement`
predicate as validation of the input data.

If you don't want to perform any validation but only distinguish between two values of the same type but with different meanings,
see {@link nominal}.

To import and use `refined` from the "Brand" module:

```ts
import * as Brand from 'effect/Brand'

// Can be accessed like this
Brand.refined
```

**Example**

```ts
import * as Brand from 'effect/Brand'

type Int = number & Brand.Brand<'Int'>

const Int = Brand.refined<Int>(
  (n) => Number.isInteger(n),
  (n) => Brand.error(`Expected ${n} to be an integer`)
)

assert.strictEqual(Int(1), 1)
assert.throws(() => Int(1.1))
```

**Signature**

```ts
export declare const refined: <A extends Brand<any>>(
  refinement: Predicate<Brand.Unbranded<A>>,
  onFailure: (a: Brand.Unbranded<A>) => Brand.BrandErrors
) => Brand.Constructor<A>
```
