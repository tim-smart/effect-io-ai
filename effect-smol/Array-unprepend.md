Package: `effect`<br />
Module: `Array`<br />

## Array.unprepend

Splits a non-empty array into its first element and the remaining elements.

- Returns a tuple `[head, tail]`.
- Requires a `NonEmptyReadonlyArray`.

**Example** (Destructuring head and tail)

```ts
import { Array } from "effect"

const result = Array.unprepend([1, 2, 3, 4])
console.log(result) // [1, [2, 3, 4]]
```

**See**

- `unappend` — split into init + last
- `headNonEmpty` — get only the head
- `tailNonEmpty` — get only the tail

**Signature**

```ts
declare const unprepend: <A>(self: NonEmptyReadonlyArray<A>) => [firstElement: A, remainingElements: Array<A>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L954)

Since v2.0.0