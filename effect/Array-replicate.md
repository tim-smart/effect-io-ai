# replicate

Return a `NonEmptyArray` containing a value repeated the specified number of times.

**Note**. `n` is normalized to an integer >= 1.

To import and use `replicate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.replicate
```

**Example**

```ts
import { replicate } from "effect/Array"

assert.deepStrictEqual(replicate("a", 3), ["a", "a", "a"])
```

**Signature**

```ts
export declare const replicate: { (n: number): <A>(a: A) => [A, ...A[]]; <A>(a: A, n: number): [A, ...A[]] }
```
