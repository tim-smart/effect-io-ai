# and

Combines two predicates into a new predicate that returns `true` if both of the predicates returns `true`.

To import and use `and` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.and
```

**Example**

```ts
import * as P from "effect/Predicate"

const minLength = (n: number) => (s: string) => s.length >= n
const maxLength = (n: number) => (s: string) => s.length <= n

const length = (n: number) => P.and(minLength(n), maxLength(n))

assert.deepStrictEqual(length(2)("aa"), true)
assert.deepStrictEqual(length(2)("a"), false)
assert.deepStrictEqual(length(2)("aaa"), false)
```

**Signature**

```ts
export declare const and: {
  <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B & C>
  <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B & C>
  <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>
  <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>
}
```
