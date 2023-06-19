# contains

Returns a function that checks if an `Option` contains a given value using a provided `Equivalence` instance.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, contains } from '@effect/data/Option'
import { Equivalence } from '@effect/data/Number'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(pipe(some(2), contains(Equivalence)(2)), true)
assert.deepStrictEqual(pipe(some(1), contains(Equivalence)(2)), false)
assert.deepStrictEqual(pipe(none(), contains(Equivalence)(2)), false)
```

**Signature**

```ts
export declare const contains: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Option<A>) => boolean
  (self: Option<A>, a: A): boolean
}
```
