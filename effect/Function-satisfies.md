# satisfies

A function that ensures that the type of an expression matches some type,
without changing the resulting type of that expression.

To import and use `satisfies` from the "Function" module:

ts
import \* as Function from "effect/Function"
// Can be accessed like this
Function.satisfies
undefined

**Example**

```ts
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
export declare const satisfies: <A>() => <B extends A>(b: B) => B
```
