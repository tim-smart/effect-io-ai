# toRefinement

Returns a type guard from a `Option` returning function.
This function ensures that a type guard definition is type-safe.

To import and use `toRefinement` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.toRefinement
```

**Example**

```ts
import { Option } from "effect"

const parsePositive = (n: number): Option.Option<number> => (n > 0 ? Option.some(n) : Option.none())

const isPositive = Option.toRefinement(parsePositive)

assert.deepStrictEqual(isPositive(1), true)
assert.deepStrictEqual(isPositive(-1), false)
```

**Signature**

```ts
export declare const toRefinement: <A, B extends A>(f: (a: A) => Option<B>) => (a: A) => a is B
```
