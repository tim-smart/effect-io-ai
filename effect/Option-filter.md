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
import * as O from "effect/Option"

// predicate
const isEven = (n: number) => n % 2 === 0

assert.deepStrictEqual(O.filter(O.none(), isEven), O.none())
assert.deepStrictEqual(O.filter(O.some(3), isEven), O.none())
assert.deepStrictEqual(O.filter(O.some(2), isEven), O.some(2))

// refinement
const isNumber = (v: unknown): v is number => typeof v === "number"

assert.deepStrictEqual(O.filter(O.none(), isNumber), O.none())
assert.deepStrictEqual(O.filter(O.some("hello"), isNumber), O.none())
assert.deepStrictEqual(O.filter(O.some(2), isNumber), O.some(2))
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Option<A>) => Option<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: Option<B>) => Option<B>
  <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Option<A>, predicate: Predicate<A>): Option<A>
}
```
