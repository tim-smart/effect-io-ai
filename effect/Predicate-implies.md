Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.implies

Creates a predicate that represents a logical "if-then" rule.

Think of it as a conditional promise: **"If `antecedent` holds true, then I promise `consequent` will also be true."**

This function is invaluable for defining complex validation logic where one condition dictates another.

### How It Works

The rule only fails (returns `false`) when the "if" part is `true`, but the "then" part is `false`.
In all other cases, the promise is considered kept, and the result is `true`.

This includes the concept of **"vacuous truth"**: if the "if" part is `false`, the rule doesn't apply,
so the promise isn't broken, and the result is `true`. (e.g., "If it rains, I'll bring an umbrella."
If it doesn't rain, you haven't broken your promise, no matter what).

### Key Details

- **Logical Equivalence**: `implies(p, q)` is the same as `not(p).or(q)`, or simply `!p || q`
  in plain JavaScript. This can be a helpful way to reason about its behavior.

- **Type-Safety Warning**: This function always returns a `Predicate`, never a type-narrowing
  `Refinement`. A `true` result doesn't guarantee the `consequent` passed (it could be `true`
  simply because the `antecedent` was `false`), so it cannot be used to safely narrow a type.

**Example**

```ts
// Rule: A user can only be an admin if they also belong to the "staff" group.
import * as assert from "node:assert"
import { Predicate } from "effect"

type User = {
  isStaff: boolean
  isAdmin: boolean
}

const isValidUserPermission = Predicate.implies(
  // antecedent: "if" the user is an admin...
  (user: User) => user.isAdmin,
  // consequent: "then" they must be staff.
  (user: User) => user.isStaff
)

// A non-admin who is not staff. Rule doesn't apply (antecedent is false).
assert.strictEqual(isValidUserPermission({ isStaff: false, isAdmin: false }), true)

// A staff member who is not an admin. Rule doesn't apply (antecedent is false).
assert.strictEqual(isValidUserPermission({ isStaff: true, isAdmin: false }), true)

// An admin who is also staff. The rule was followed.
assert.strictEqual(isValidUserPermission({ isStaff: true, isAdmin: true }), true)

// An admin who is NOT staff. The rule was broken!
assert.strictEqual(isValidUserPermission({ isStaff: false, isAdmin: true }), false)
```

**Signature**

```ts
declare const implies: { <A>(consequent: Predicate<A>): (antecedent: Predicate<A>) => Predicate<A>; <A>(antecedent: Predicate<A>, consequent: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1299)

Since v2.0.0