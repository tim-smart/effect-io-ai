Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.and

Combines two predicates with a logical "AND". The resulting predicate returns `true`
only if both of the predicates return `true`.

If both predicates are `Refinement`s, the resulting predicate is a `Refinement` to the
intersection of their target types (`B & C`).

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

type Person = { name: string }
type Employee = { id: number }

const hasName = (u: unknown): u is Person => Predicate.hasProperty(u, "name") && typeof (u as any).name === "string"
const hasId = (u: unknown): u is Employee => Predicate.hasProperty(u, "id") && typeof (u as any).id === "number"

const isPersonAndEmployee = Predicate.and(hasName, hasId)

const val: unknown = { name: "Alice", id: 123 }
if (isPersonAndEmployee(val)) {
  // val is narrowed to Person & Employee
  assert.strictEqual(val.name, "Alice")
  assert.strictEqual(val.id, 123)
}

assert.strictEqual(isPersonAndEmployee({ name: "Bob" }), false) // Missing id
assert.strictEqual(isPersonAndEmployee({ id: 456 }), false) // Missing name
```

**Signature**

```ts
declare const and: { <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B & C>; <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B & C>; <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1177)

Since v2.0.0