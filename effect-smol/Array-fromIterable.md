Package: `effect`<br />
Module: `Array`<br />

## Array.fromIterable

Converts an `Iterable` to an `Array`.

- If the input is already an array, returns it **by reference** (no copy).
- Otherwise, creates a new array from the iterable.
- Use `copy` if you need a fresh array even when the input is already
  an array.

**Example** (Converting a Set to an array)

```ts
import { Array } from "effect"

const result = Array.fromIterable(new Set([1, 2, 3]))
console.log(result) // [1, 2, 3]
```

**See**

- `ensure` — wrap a single value or return an existing array
- `copy` — create a shallow copy of an array

**Signature**

```ts
declare const fromIterable: <A>(collection: Iterable<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L337)

Since v2.0.0