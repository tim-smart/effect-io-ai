# liftPredicate

Transforms a `Predicate` function into a `Some` of the input value if the predicate returns `true` or `None`
if the predicate returns `false`.

To import and use `liftPredicate` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.liftPredicate
undefined

**Example**

```ts
import { Option } from "effect"

const getOption = Option.liftPredicate((n: number) => n >= 0)

assert.deepStrictEqual(getOption(-1), Option.none())
assert.deepStrictEqual(getOption(1), Option.some(1))
```

**Signature**

```ts
export declare const liftPredicate: {
  <A, B extends A>(refinement: Refinement<A, B>): (a: A) => Option<B>
  <B extends A, A = B>(predicate: Predicate<A>): (b: B) => Option<B>
  <A, B extends A>(self: A, refinement: Refinement<A, B>): Option<B>
  <B extends A, A = B>(self: B, predicate: Predicate<A>): Option<B>
}
```
