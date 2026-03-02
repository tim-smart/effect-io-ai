Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.combineAll

Combines multiple equivalence relations into a single equivalence using logical AND.

When to use this:
- When you need to combine three or more equivalences
- When you have a dynamic collection of equivalences to combine
- When building equivalences from arrays or iterables
- Prefer over multiple `combine` calls when you have many equivalences

Behavior:
- Does not mutate inputs
- Returns `true` only if all equivalences in the collection return `true`
- Short-circuits: stops at the first equivalence that returns `false`
- Empty collection edge case: returns an equivalence that always returns `true`
- The result is also an equivalence (satisfies reflexive, symmetric, transitive properties)

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

See also: `combine`, `mapInput`

**Signature**

```ts
declare const combineAll: <A>(collection: Iterable<Equivalence<A>>) => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L430)

Since v2.0.0