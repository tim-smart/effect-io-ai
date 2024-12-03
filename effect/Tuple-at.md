# at

Retrieves the element at a specified index from a tuple.

To import and use `at` from the "Tuple" module:

```ts
import * as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.at
```

**Example**

```ts
import { Tuple } from "effect"

assert.deepStrictEqual(Tuple.at([1, "hello", true], 1), "hello")
```

**Signature**

```ts
export declare const at: {
  <N extends number>(index: N): <A extends ReadonlyArray<unknown>>(self: A) => A[N]
  <A extends ReadonlyArray<unknown>, N extends number>(self: A, index: N): A[N]
}
```
