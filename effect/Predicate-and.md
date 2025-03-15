Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.and

Combines two predicates into a new predicate that returns `true` if both of the predicates returns `true`.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const minLength = (n: number) => (s: string) => s.length >= n
const maxLength = (n: number) => (s: string) => s.length <= n

const length = (n: number) => Predicate.and(minLength(n), maxLength(n))

assert.deepStrictEqual(length(2)("aa"), true)
assert.deepStrictEqual(length(2)("a"), false)
assert.deepStrictEqual(length(2)("aaa"), false)
```

**Signature**

```ts
declare const and: { <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B & C>; <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B & C>; <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L886)

Since v2.0.0