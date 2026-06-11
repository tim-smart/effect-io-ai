Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.append

Appends an element to the end of an `Iterable`, creating a new `Iterable`.

**When to use**

Use to add one element after all elements of an iterable while keeping the
result as a lazy `Iterable`.

**Details**

The result yields every element from `self` first, then yields `last` after
`self` is exhausted.

**Gotchas**

If `self` is infinite or never completes, the appended element is never
reached.

**Example** (Appending an element)

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3]
const withFour = Iterable.append(numbers, 4)
console.log(Array.from(withFour)) // [1, 2, 3, 4]

// Chain multiple appends
const result = Iterable.append(
  Iterable.append([1, 2], 3),
  4
)
console.log(Array.from(result)) // [1, 2, 3, 4]
```

**See**

- `prepend` for adding one element before the existing elements
- `appendAll` for appending all elements from another iterable

**Signature**

```ts
declare const append: { <B>(last: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, last: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L293)

Since v2.0.0