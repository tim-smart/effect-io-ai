Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Equivalence

Represents an equivalence relation over type `A`.

**When to use**

Use as a type annotation when you accept or return an equivalence function.

**Details**

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

**See**

- `make`
- `strictEqual`

**Signature**

```ts
type Equivalence<A> = (self: A, that: A) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L60)

Since v2.0.0