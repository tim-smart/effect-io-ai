Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.makeReducer

Creates a `Reducer` for combining `Equivalence` instances, useful for aggregating equivalences in collections.

**When to use**

Use when you need a reducer that combines equivalences.

**Details**

Returns a reducer that combines equivalences using `combine`. The identity
element for empty collections is an equivalence that always returns `true`.
The reducer uses `combineAll` for collections of equivalences and can be used
with fold operations.

**Example** (Creating a Reducer)

```ts
import { Equivalence } from "effect"

const reducer = Equivalence.makeReducer<number>()
const equivalences = [
  Equivalence.strictEqual<number>(),
  Equivalence.make<number>((a, b) => Math.abs(a - b) < 1)
]

const combined = reducer.combineAll(equivalences)
// Combined equivalence requires both conditions to be true
console.log(combined(1, 1)) // true (strict equal)
console.log(combined(1, 1.5)) // false (strict equal fails)
```

**See**

- `combine` Combine two equivalences
- `combineAll` Combine multiple equivalences
- `Reducer` Reducer type for collection operations

**Signature**

```ts
declare const makeReducer: <A>() => Reducer.Reducer<Equivalence<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L811)

Since v4.0.0