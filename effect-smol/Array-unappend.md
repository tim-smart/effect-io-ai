Package: `effect`<br />
Module: `Array`<br />

## Array.unappend

Splits a non-empty array into all elements except the last, and the last
element.

**When to use**

Use when you need to split a non-empty array into the elements before the
last element and the last element.

**Details**

Returns a tuple `[init, last]` and requires a `NonEmptyReadonlyArray`.

**Example** (Destructuring init and last)

```ts
import { Array } from "effect"

const result = Array.unappend([1, 2, 3, 4])
console.log(result) // [[1, 2, 3], 4]
```

**See**

- `unprepend` for splitting a non-empty array into head and tail
- `initNonEmpty` for getting only the elements before the last
- `lastNonEmpty` for getting only the last element

**Signature**

```ts
declare const unappend: <A>(self: NonEmptyReadonlyArray<A>) => [arrayWithoutLastElement: Array<A>, lastElement: A]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1058)

Since v2.0.0