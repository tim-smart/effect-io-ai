Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.mapInput

Transforms an equivalence relation by mapping the input values before comparison.

**When to use**

Use when you need an equivalence for one type by comparing a derived value.

**Details**

- Applies the transformation function to both values before comparing
- The transformation function should be pure and have no side effects
- The resulting equivalence compares the transformed values using the provided equivalence
- The result is also an equivalence that satisfies reflexive, symmetric, and transitive properties
- Useful for comparing by one property or normalizing values before
  comparison, such as case-insensitive strings

**Example** (Deriving equivalence from an object property)

```ts
import { Equivalence } from "effect"

interface User {
  id: number
  name: string
  email: string
}

// Create equivalence based on user ID only
const userByIdEq = Equivalence.mapInput(
  Equivalence.strictEqual<number>(),
  (user: User) => user.id
)

const user1 = { id: 1, name: "Alice", email: "alice@example.com" }
const user2 = { id: 1, name: "Alice Smith", email: "alice.smith@example.com" }
const user3 = { id: 2, name: "Bob", email: "bob@example.com" }

console.log(userByIdEq(user1, user2)) // true (same ID)
console.log(userByIdEq(user1, user3)) // false (different ID)
```

**Example** (Case-insensitive string equivalence)

```ts
import { Equivalence } from "effect"

const caseInsensitiveEq = Equivalence.mapInput(
  Equivalence.strictEqual<string>(),
  (s: string) => s.toLowerCase()
)

console.log(caseInsensitiveEq("Hello", "HELLO")) // true
console.log(caseInsensitiveEq("Hello", "World")) // false
```

**See**

- `combine`
- `Struct`

**Signature**

```ts
declare const mapInput: { <B, A>(f: (b: B) => A): (self: Equivalence<A>) => Equivalence<B>; <A, B>(self: Equivalence<A>, f: (b: B) => A): Equivalence<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L476)

Since v2.0.0