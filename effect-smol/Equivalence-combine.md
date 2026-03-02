Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.combine

Combines two equivalence relations using logical AND.

When to use this:
- When you need to combine exactly two equivalences
- When building complex equivalences from simpler ones
- When you want both conditions to be satisfied (AND logic)

Behavior:
- Does not mutate inputs
- Returns `true` only if both equivalences return `true`
- Short-circuits: if the first equivalence returns `false`, the second is not called
- The result is also an equivalence (satisfies reflexive, symmetric, transitive properties)

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

See also: `combineAll`, `mapInput`

**Signature**

```ts
declare const combine: { <A>(that: Equivalence<A>): (self: Equivalence<A>) => Equivalence<A>; <A>(self: Equivalence<A>, that: Equivalence<A>): Equivalence<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L360)

Since v2.0.0