# mapInput

Given a `Predicate<A>` returns a `Predicate<B>`

To import and use `mapInput` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.mapInput
```

**Example**

```ts
import * as P from "effect/Predicate"
import * as N from "effect/Number"

const minLength3 = P.mapInput(N.greaterThan(2), (s: string) => s.length)

assert.deepStrictEqual(minLength3("a"), false)
assert.deepStrictEqual(minLength3("aa"), false)
assert.deepStrictEqual(minLength3("aaa"), true)
assert.deepStrictEqual(minLength3("aaaa"), true)
```

**Signature**

```ts
export declare const mapInput: {
  <B, A>(f: (b: B) => A): (self: Predicate<A>) => Predicate<B>
  <A, B>(self: Predicate<A>, f: (b: B) => A): Predicate<B>
}
```
