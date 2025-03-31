Package: `effect`<br />
Module: `Function`<br />

## Function.satisfies

A function that ensures that the type of an expression matches some type,
without changing the resulting type of that expression.

**Example**

```ts
import * as assert from "node:assert"
import { satisfies } from "effect/Function"

const test1 = satisfies<number>()(5 as const)
    //^? const test: 5
    // @ts-expect-error
const test2 = satisfies<string>()(5)
    //^? Argument of type 'number' is not assignable to parameter of type 'string'

assert.deepStrictEqual(satisfies<number>()(5), 5)
```

**Signature**

```ts
declare const satisfies: <A>() => <B extends A>(b: B) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L256)

Since v2.0.0