Package: `effect`<br />
Module: `Array`<br />

## Array.unappend

Splits a non-empty array into all elements except the last, and the last
element.

- Returns a tuple `[init, last]`.
- Requires a `NonEmptyReadonlyArray`.

**Example** (Destructuring init and last)

```ts
import { Array } from "effect"

const result = Array.unappend([1, 2, 3, 4])
console.log(result) // [[1, 2, 3], 4]
```

**See**

- `unprepend` — split into head + tail
- `initNonEmpty` — get only the init
- `lastNonEmpty` — get only the last

**Signature**

```ts
declare const unappend: <A>(self: NonEmptyReadonlyArray<A>) => [arrayWithoutLastElement: Array<A>, lastElement: A]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L980)

Since v2.0.0