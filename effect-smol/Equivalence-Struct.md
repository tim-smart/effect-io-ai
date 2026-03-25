Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Struct

Creates an equivalence for objects by comparing their properties using provided equivalences.

When to use this:
- When comparing objects with known, fixed property names
- When you need different equivalence logic for different properties
- When working with struct/interface types with specific fields
- Prefer over `Record` when you have a fixed set of known properties

Behavior:
- Does not mutate inputs
- Compares only the properties specified in the struct definition
- Properties not in the struct are ignored
- Returns `true` only if all specified properties are equivalent according to their equivalences
- Supports both string and symbol keys (via `Reflect.ownKeys`)
- The result is also an equivalence (satisfies reflexive, symmetric, transitive properties)

**Example** (Struct with different equivalences per field)

```ts
import { Equivalence } from "effect"

interface Person {
  name: string
  age: number
  email: string
}

const caseInsensitive = Equivalence.mapInput(
  Equivalence.strictEqual<string>(),
  (s: string) => s.toLowerCase()
)

const personEq = Equivalence.Struct({
  name: caseInsensitive,
  age: Equivalence.strictEqual<number>(),
  email: caseInsensitive
})

const person1 = { name: "Alice", age: 30, email: "alice@example.com" }
const person2 = { name: "ALICE", age: 30, email: "ALICE@EXAMPLE.COM" }
const person3 = { name: "Alice", age: 31, email: "alice@example.com" }

console.log(personEq(person1, person2)) // true (case-insensitive match)
console.log(personEq(person1, person3)) // false (different age)
```

**Example** (Partial equivalence for specific fields)

```ts
import { Equivalence } from "effect"

const nameAgeEq = Equivalence.Struct({
  name: Equivalence.strictEqual<string>(),
  age: Equivalence.strictEqual<number>()
})

// Only compares name and age, ignores other properties
const obj1 = { name: "Alice", age: 30, extra: "ignored" }
const obj2 = { name: "Alice", age: 30, extra: "different" }
console.log(nameAgeEq(obj1, obj2)) // true
```

See also: `Record`, `mapInput`, `combine`

**Signature**

```ts
declare const Struct: <R extends Record<string, Equivalence<any>>>(fields: R) => Equivalence<{ readonly [K in keyof R]: [R[K]] extends [Equivalence<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L721)

Since v4.0.0