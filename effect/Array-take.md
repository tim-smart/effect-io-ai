Package: `effect`<br />
Module: `Array`<br />

## Array.take

Keeps the first `n` elements, creating a new array.

**When to use**

Use to keep up to the first `n` elements from an iterable as a new array.

**Details**

`n` is clamped to `[0, length]`. Returns an empty array when `n <= 0`.

**Example** (Taking from the start)

```ts
import { Array } from "effect"

console.log(Array.take([1, 2, 3, 4, 5], 3)) // [1, 2, 3]
```

**See**

- `takeRight` for keeping elements from the end
- `takeWhile` for keeping an initial prefix while a predicate holds
- `drop` for removing elements from the start

**Signature**

```ts
declare const take: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1296)

Since v2.0.0