# all

Combines two or more brands together to form a single branded type.
This API is useful when you want to validate that the input data passes multiple brand validators.

To import and use `all` from the "Brand" module:

```ts
import * as Brand from '@effect/data/Brand'

// Can be accessed like this
Brand.all
```

**Example**

```ts
import * as Brand from '@effect/data/Brand'

type Int = number & Brand.Brand<'Int'>
const Int = Brand.refined<Int>(
  (n) => Number.isInteger(n),
  (n) => Brand.error(`Expected ${n} to be an integer`)
)
type Positive = number & Brand.Brand<'Positive'>
const Positive = Brand.refined<Positive>(
  (n) => n > 0,
  (n) => Brand.error(`Expected ${n} to be positive`)
)

const PositiveInt = Brand.all(Int, Positive)

assert.strictEqual(PositiveInt(1), 1)
assert.throws(() => PositiveInt(1.1))
```

**Signature**

```ts
export declare const all: <Brands extends readonly [Brand.Constructor<any>, ...Brand.Constructor<any>[]]>(
  ...brands: Brand.EnsureCommonBase<Brands>
) => Brand.Constructor<
  Types.UnionToIntersection<
    { [B in keyof Brands]: Brand.FromConstructor<Brands[B]> }[number]
  > extends infer X extends Brand<any>
    ? X
    : Brand<any>
>
```
