# traverse

Applies an `Option` value to an effectful function that returns an `F` value.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

const traverse = O.traverse(E.Applicative)
const f = (n: number) => (n >= 0 ? E.right(1) : E.left('negative'))

assert.deepStrictEqual(traverse(O.some(1), f), E.right(O.some(1)))
assert.deepStrictEqual(traverse(O.some(-1), f), E.left('negative'))
assert.deepStrictEqual(traverse(O.none(), f), E.right(O.none()))
```

**Signature**

```ts
export declare const traverse: <F extends TypeLambda>(
  F: applicative.Applicative<F>
) => {
  <A, R, O, E, B>(f: (a: A) => Kind<F, R, O, E, B>): (self: Option<A>) => Kind<F, R, O, E, Option<B>>
  <A, R, O, E, B>(self: Option<A>, f: (a: A) => Kind<F, R, O, E, B>): Kind<F, R, O, E, Option<B>>
}
```
