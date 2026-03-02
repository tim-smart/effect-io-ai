Package: `effect`<br />
Module: `Array`<br />

## Array.dropWhile

Drops elements from the start while the predicate holds, returning the rest.

- The predicate receives `(element, index)`.

**Example** (Dropping while condition holds)

```ts
import { Array } from "effect"

console.log(Array.dropWhile([1, 2, 3, 4, 5], (x) => x < 4)) // [4, 5]
```

**See**

- `takeWhile` — keep the matching prefix instead
- `drop` — drop a fixed count

**Signature**

```ts
declare const dropWhile: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1407)

Since v2.0.0