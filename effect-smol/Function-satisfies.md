Package: `effect`<br />
Module: `Function`<br />

## Function.satisfies

Ensures that the type of an expression matches some type,
without changing the resulting type of that expression.

**When to use**

Use to check assignability while preserving the expression's precise inferred
type.

**Example** (Checking an expression against a type)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

const test1 = Function.satisfies<number>()(5 as const)
// ^? const test: 5
// @ts-expect-error
const test2 = Function.satisfies<string>()(5)
// ^? Argument of type 'number' is not assignable to parameter of type 'string'

assert.deepStrictEqual(Function.satisfies<number>()(5), 5)
```

**See**

- `cast` for changing only the static TypeScript type

**Signature**

```ts
declare const satisfies: <A>() => <B extends A>(b: B) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L317)

Since v2.0.0