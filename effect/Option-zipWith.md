# zipWith

Zips two `Option` values together using a provided function, returning a new `Option` of the result.

To import and use `zipWith` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.zipWith
```

**Example**

```ts
import { Option } from "effect"

type Complex = [real: number, imaginary: number]

const complex = (real: number, imaginary: number): Complex => [real, imaginary]

assert.deepStrictEqual(Option.zipWith(Option.none(), Option.none(), complex), Option.none())
assert.deepStrictEqual(Option.zipWith(Option.some(1), Option.none(), complex), Option.none())
assert.deepStrictEqual(Option.zipWith(Option.none(), Option.some(1), complex), Option.none())
assert.deepStrictEqual(Option.zipWith(Option.some(1), Option.some(2), complex), Option.some([1, 2]))

assert.deepStrictEqual(Option.zipWith(Option.some(1), complex)(Option.some(2)), Option.some([2, 1]))
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Option<B>, f: (a: A, b: B) => C): (self: Option<A>) => Option<C>
  <A, B, C>(self: Option<A>, that: Option<B>, f: (a: A, b: B) => C): Option<C>
}
```
