Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.combineAll

Combines multiple equivalence relations into a single equivalence using logical AND.

**When to use**

Use when you need to combine three or more equivalences
- Use when you have a dynamic collection of equivalences to combine
- Use when building equivalences from arrays or iterables
- Prefer this over multiple `combine` calls when you have many equivalences

**Details**

- Does not mutate inputs
- Returns `true` only if all equivalences in the collection return `true`
- Short-circuits: stops at the first equivalence that returns `false`
- Empty collections return an equivalence that always returns `true`
- The result is also an equivalence that satisfies reflexive, symmetric, and transitive properties

**Example** (Combining multiple field equivalences)

```ts
import { Equivalence } from "effect"

interface Point3D {
  x: number
  y: number
  z: number
}

const xEq = Equivalence.mapInput(
  Equivalence.strictEqual<number>(),
  (p: Point3D) => p.x
)
const yEq = Equivalence.mapInput(
  Equivalence.strictEqual<number>(),
  (p: Point3D) => p.y
)
const zEq = Equivalence.mapInput(
  Equivalence.strictEqual<number>(),
  (p: Point3D) => p.z
)

const point3DEq = Equivalence.combineAll([xEq, yEq, zEq])

const point1 = { x: 1, y: 2, z: 3 }
const point2 = { x: 1, y: 2, z: 3 }
const point3 = { x: 1, y: 2, z: 4 }

console.log(point3DEq(point1, point2)) // true
console.log(point3DEq(point1, point3)) // false (different z)
```

**Example** (Empty collection edge case)

```ts
import { Equivalence } from "effect"

// Empty collection always returns true
const alwaysEq = Equivalence.combineAll([])
console.log(alwaysEq("anything", "else")) // true
```

**See**

- `combine`
- `mapInput`

**Signature**

```ts
declare const combineAll: <A>(collection: Iterable<Equivalence<A>>) => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L467)

Since v2.0.0