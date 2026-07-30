Package: `effect`<br />
Module: `Brand`<br />

## Brand.refined

Returns a `Brand.Constructor` that can construct a branded type from an unbranded value using the provided `refinement`
predicate as validation of the input data.

If you don't want to perform any validation but only distinguish between two values of the same type but with different meanings,
see `nominal`.

**Example**

```ts
import * as assert from "node:assert"
import { Brand } from "effect"

type Int = number & Brand.Brand<"Int">

const Int = Brand.refined<Int>(
  (n) => Number.isInteger(n),
  (n) => Brand.error(`Expected ${n} to be an integer`)
)

console.log(Int(1))
// 1

assert.throws(() => Int(1.1))
```

**Signature**

```ts
declare const refined: { <A extends Brand<any>>(f: (unbranded: Brand.Unbranded<A>) => Option.Option<Brand.BrandErrors>): Brand.Constructor<A>; <A extends Brand<any>>(refinement: Predicate<Brand.Unbranded<A>>, onFailure: (unbranded: Brand.Unbranded<A>) => Brand.BrandErrors): Brand.Constructor<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L224)

Since v2.0.0