Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Equivalence

Represents an equivalence relation over type `A`.

When to use this:
- As a type annotation for equivalence functions
- When implementing custom equivalence logic
- When working with collection operations that require equivalence relations

Behavior:
- Pure function: does not mutate inputs or have side effects
- Returns `boolean`: `true` if values are equivalent, `false` otherwise
- Must satisfy reflexive, symmetric, and transitive properties

**Example** (Simple number equivalence)

```ts
import type { Equivalence } from "effect"

const numberEq: Equivalence.Equivalence<number> = (a, b) => a === b

console.log(numberEq(1, 1)) // true
console.log(numberEq(1, 2)) // false
```

**Example** (Custom object equivalence)

```ts
import type { Equivalence } from "effect"

interface Point {
  x: number
  y: number
}

const pointEq: Equivalence.Equivalence<Point> = (a, b) =>
  a.x === b.x && a.y === b.y

console.log(pointEq({ x: 1, y: 2 }, { x: 1, y: 2 })) // true
```

See also: `make`, `strictEqual`

**Signature**

```ts
type Equivalence<A> = (self: A, that: A) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L103)

Since v2.0.0