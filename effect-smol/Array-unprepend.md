Package: `effect`<br />
Module: `Array`<br />

## Array.unprepend

Splits a non-empty array into its first element and the remaining elements.

**When to use**

Use when you have a `NonEmptyReadonlyArray` and need both its first element
and the remaining elements as separate values.

**Details**

- Returns a tuple `[head, tail]`.
- Requires a `NonEmptyReadonlyArray`.

**Example** (Destructuring head and tail)

```ts
import { Array } from "effect"

const result = Array.unprepend([1, 2, 3, 4])
console.log(result) // [1, [2, 3, 4]]
```

**See**

- `unappend` for splitting a non-empty array into init and last
- `headNonEmpty` for getting only the first element
- `tailNonEmpty` for getting only the elements after the first

**Signature**

```ts
declare const unprepend: <A>(self: NonEmptyReadonlyArray<A>) => [firstElement: A, remainingElements: Array<A>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1088)

Since v2.0.0