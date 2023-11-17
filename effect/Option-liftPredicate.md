# liftPredicate

Transforms a `Predicate` function into a `Some` of the input value if the predicate returns `true` or `None`
if the predicate returns `false`.

To import and use `liftPredicate` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.liftPredicate
```

**Example**

```ts
import * as O from "effect/Option"

const getOption = O.liftPredicate((n: number) => n >= 0)

assert.deepStrictEqual(getOption(-1), O.none())
assert.deepStrictEqual(getOption(1), O.some(1))
```

**Signature**

```ts
export declare const liftPredicate: {
  <C extends A, B extends A, A = C>(refinement: Refinement<A, B>): (c: C) => Option<B>
  <B extends A, A = B>(predicate: Predicate<A>): (b: B) => Option<B>
}
```
