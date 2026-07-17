Package: `effect`<br />
Module: `Array`<br />

## Array.init

Returns all elements except the last safely, wrapped in an `Option`.

**When to use**

Use to safely get all elements before the last when the iterable may be empty.

**Details**

Allocates a new array via `slice(0, -1)`. Empty inputs return
`Option.none()`.

**Example** (Getting init)

```ts
import { Array } from "effect"

console.log(Array.init([1, 2, 3, 4])) // Option.some([1, 2, 3])
console.log(Array.init([])) // Option.none()
```

**See**

- `initNonEmpty` — when the array is known non-empty
- `tail` — all elements except the first

**Signature**

```ts
declare const init: <A>(self: Iterable<A>) => Option.Option<Array<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1242)

Since v2.0.0