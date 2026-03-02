Package: `effect`<br />
Module: `Array`<br />

## Array.extend

Applies a function to each suffix of the array (starting from each index),
collecting the results.

- For index `i`, the function receives `self.slice(i)`.

**Example** (Suffix lengths)

```ts
import { Array } from "effect"

console.log(Array.extend([1, 2, 3], (as) => as.length)) // [3, 2, 1]
```

**Signature**

```ts
declare const extend: { <A, B>(f: (as: ReadonlyArray<A>) => B): (self: ReadonlyArray<A>) => Array<B>; <A, B>(self: ReadonlyArray<A>, f: (as: ReadonlyArray<A>) => B): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3682)

Since v2.0.0