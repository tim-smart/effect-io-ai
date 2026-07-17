Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.combine

Combines two equivalence relations using logical AND.

**When to use**

Use when you need to combine exactly two equivalences with AND semantics.

**Details**

Returns `true` only if both equivalences return `true`. The comparison
short-circuits when the first equivalence returns `false`. The result is also
an equivalence that satisfies reflexive, symmetric, and transitive
properties.

**Example** (Combining name and age equivalences)

```ts
import { Equivalence } from "effect"

interface Person {
  name: string
  age: number
}

const nameEquivalence = Equivalence.mapInput(
  Equivalence.strictEqual<string>(),
  (p: Person) => p.name
)

const ageEquivalence = Equivalence.mapInput(
  Equivalence.strictEqual<number>(),
  (p: Person) => p.age
)

const personEquivalence = Equivalence.combine(nameEquivalence, ageEquivalence)

const person1 = { name: "Alice", age: 30 }
const person2 = { name: "Alice", age: 30 }
const person3 = { name: "Alice", age: 31 }

console.log(personEquivalence(person1, person2)) // true
console.log(personEquivalence(person1, person3)) // false (different age)
```

**See**

- `combineAll`
- `mapInput`

**Signature**

```ts
declare const combine: { <A>(that: Equivalence<A>): (self: Equivalence<A>) => Equivalence<A>; <A>(self: Equivalence<A>, that: Equivalence<A>): Equivalence<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L337)

Since v2.0.0