Package: `effect`<br />
Module: `Array`<br />

## Array.extend

Applies a function to each suffix of the array (starting from each index),
collecting the results.

**When to use**

Use when you need to compute a result from every suffix of an array, such as
cumulative aggregations from each position.

**Details**

For index `i`, the function receives `self.slice(i)`.

**Example** (Computing suffix lengths)

```ts
import { Array } from "effect"

console.log(Array.extend([1, 2, 3], (as) => as.length)) // [3, 2, 1]
```

**See**

- `scan` for keeping intermediate accumulator values during a fold

**Signature**

```ts
declare const extend: { <A, B>(f: (as: ReadonlyArray<A>) => B): (self: ReadonlyArray<A>) => Array<B>; <A, B>(self: ReadonlyArray<A>, f: (as: ReadonlyArray<A>) => B): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L4210)

Since v2.0.0