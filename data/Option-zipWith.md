# zipWith

Zips two `Option` values together using a provided function, returning a new `Option` of the result.

To import and use `zipWith` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.zipWith
```

**Example**

```ts
import * as O from '@effect/data/Option'

type Complex = [number, number]

const complex = (real: number, imaginary: number): Complex => [real, imaginary]

assert.deepStrictEqual(O.zipWith(O.none(), O.none(), complex), O.none())
assert.deepStrictEqual(O.zipWith(O.some(1), O.none(), complex), O.none())
assert.deepStrictEqual(O.zipWith(O.none(), O.some(1), complex), O.none())
assert.deepStrictEqual(O.zipWith(O.some(1), O.some(2), complex), O.some([1, 2]))

assert.deepStrictEqual(O.zipWith(O.some(1), complex)(O.some(2)), O.some([2, 1]))
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Option<B>, f: (a: A, b: B) => C): (self: Option<A>) => Option<C>
  <A, B, C>(self: Option<A>, that: Option<B>, f: (a: A, b: B) => C): Option<C>
}
```
