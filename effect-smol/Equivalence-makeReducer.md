Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.makeReducer

Creates a `Reducer` for combining `Equivalence` instances, useful for aggregating equivalences in collections.

When to use this:
- When you need to combine multiple equivalences from a collection using reducer patterns
- When implementing fold operations over collections of equivalences
- When working with reducers that operate on equivalences

Behavior:
- Returns a reducer that combines equivalences using `combine`
- Uses an equivalence that always returns `true` as the identity element (for empty collections)
- Uses `combineAll` for combining collections of equivalences
- The reducer can be used with fold operations on collections

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

See also:
- `combine` - Combine two equivalences
- `combineAll` - Combine multiple equivalences
- `Reducer` - Reducer type for collection operations

**Signature**

```ts
declare const makeReducer: <A>() => Reducer.Reducer<Equivalence<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L838)

Since v4.0.0