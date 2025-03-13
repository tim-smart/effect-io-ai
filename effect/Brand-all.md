Package: `effect`<br />
Module: `Brand`<br />

## Brand.all

Combines two or more brands together to form a single branded type.
This API is useful when you want to validate that the input data passes multiple brand validators.

**Example**

```ts
import * as assert from "node:assert"
import { Brand } from "effect"

type Int = number & Brand.Brand<"Int">
const Int = Brand.refined<Int>(
  (n) => Number.isInteger(n),
  (n) => Brand.error(`Expected ${n} to be an integer`)
)
type Positive = number & Brand.Brand<"Positive">
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
declare const all: <Brands extends readonly [Brand.Constructor<any>, ...Array<Brand.Constructor<any>>]>(...brands: Brand.EnsureCommonBase<Brands>) => Brand.Constructor<Types.UnionToIntersection<{ [B in keyof Brands]: Brand.FromConstructor<Brands[B]>; }[number]> extends infer X extends Brand<any> ? X : Brand<any>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L305)

Since v2.0.0