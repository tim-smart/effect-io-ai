# sequence

Combines an `Option` of an `F`-structure to an `F`-structure of an `Option` with the same inner type.

To import and use `sequence` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.sequence
```

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

const sequence = O.sequence(E.Applicative)

assert.deepStrictEqual(sequence(O.some(E.right(1))), E.right(O.some(1)))
assert.deepStrictEqual(sequence(O.some(E.left('error'))), E.left('error'))
assert.deepStrictEqual(sequence(O.none()), E.right(O.none()))
```

**Signature**

```ts
export declare const sequence: <F extends TypeLambda>(
  F: applicative.Applicative<F>
) => <R, O, E, A>(self: Option<Kind<F, R, O, E, A>>) => Kind<F, R, O, E, Option<A>>
```
