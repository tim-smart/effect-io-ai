# filter

Filters an `Option` using a predicate. If the predicate is not satisfied or the `Option` is `None` returns `None`.

If you need to change the type of the `Option` in addition to filtering, see `filterMap`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

// predicate
const isEven = (n: number) => n % 2 === 0

assert.deepStrictEqual(O.filter(O.none(), isEven), O.none())
assert.deepStrictEqual(O.filter(O.some(3), isEven), O.none())
assert.deepStrictEqual(O.filter(O.some(2), isEven), O.some(2))

// refinement
const isNumber = (v: unknown): v is number => typeof v === 'number'

assert.deepStrictEqual(O.filter(O.none(), isNumber), O.none())
assert.deepStrictEqual(O.filter(O.some('hello'), isNumber), O.none())
assert.deepStrictEqual(O.filter(O.some(2), isNumber), O.some(2))
```

**Signature**

```ts
export declare const filter: {
  <C extends A, B extends A, A = C>(self: Option<C>, refinement: (a: A) => a is B): Option<B>
  <B extends A, A = B>(self: Option<B>, predicate: (a: A) => boolean): Option<B>
  <C extends A, B extends A, A = C>(refinement: (a: A) => a is B): (self: Option<C>) => Option<B>
  <B extends A, A = B>(predicate: (a: A) => boolean): (self: Option<B>) => Option<B>
}
```
