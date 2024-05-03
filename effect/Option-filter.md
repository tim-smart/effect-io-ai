# filter

Filters an `Option` using a predicate. If the predicate is not satisfied or the `Option` is `None` returns `None`.

If you need to change the type of the `Option` in addition to filtering, see `filterMap`.

To import and use `filter` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.filter
```

**Example**

```ts
import { Option } from "effect"

// predicate
const isEven = (n: number) => n % 2 === 0

assert.deepStrictEqual(Option.filter(Option.none(), isEven), Option.none())
assert.deepStrictEqual(Option.filter(Option.some(3), isEven), Option.none())
assert.deepStrictEqual(Option.filter(Option.some(2), isEven), Option.some(2))

// refinement
const isNumber = (v: unknown): v is number => typeof v === "number"

assert.deepStrictEqual(Option.filter(Option.none(), isNumber), Option.none())
assert.deepStrictEqual(Option.filter(Option.some("hello"), isNumber), Option.none())
assert.deepStrictEqual(Option.filter(Option.some(2), isNumber), Option.some(2))
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Option<A>) => Option<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: Option<A>) => Option<A>
  <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Option<A>, predicate: Predicate<A>): Option<A>
}
```
