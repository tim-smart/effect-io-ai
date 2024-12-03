# replicate

Return a `Iterable` containing a value repeated the specified number of times.

**Note**. `n` is normalized to an integer >= 1.

To import and use `replicate` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.replicate
```

**Example**

```ts
import { replicate } from "effect/Iterable"

assert.deepStrictEqual(Array.from(replicate("a", 3)), ["a", "a", "a"])
```

**Signature**

```ts
export declare const replicate: { (n: number): <A>(a: A) => Iterable<A>; <A>(a: A, n: number): Iterable<A> }
```
