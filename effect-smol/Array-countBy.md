Package: `effect`<br />
Module: `Array`<br />

## Array.countBy

Counts the elements in an iterable that satisfy a predicate.

- The predicate receives both the element and its index.
- Returns `0` for an empty iterable.

**Example** (Counting even numbers)

```ts
import { Array } from "effect"

const result = Array.countBy([1, 2, 3, 4, 5], (n) => n % 2 === 0)
console.log(result) // 2
```

**See**

- `filter` — when you need the matching elements, not just the count

**Signature**

```ts
declare const countBy: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => number; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4276)

Since v3.16.0