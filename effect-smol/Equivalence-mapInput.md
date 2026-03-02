Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.mapInput

Transforms an equivalence relation by mapping the input values before comparison.

When to use this:
- When you need an equivalence for a complex type based on a single property
- When you want to normalize values before comparison (e.g., case-insensitive strings)
- When creating equivalences that focus on specific fields of objects
- As a building block for creating equivalences via `combine` or `combineAll`

Behavior:
- Does not mutate inputs
- Applies the transformation function to both values before comparing
- The transformation function should be pure (no side effects)
- The resulting equivalence compares the transformed values using the provided equivalence
- The result is also an equivalence (satisfies reflexive, symmetric, transitive properties)

**Example** (Equivalence based on object property)

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

See also: `combine`, `Struct`

**Signature**

```ts
declare const mapInput: { <B, A>(f: (b: B) => A): (self: Equivalence<A>) => Equivalence<B>; <A, B>(self: Equivalence<A>, f: (b: B) => A): Equivalence<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L500)

Since v2.0.0