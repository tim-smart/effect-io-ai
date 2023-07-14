# containsWith

Returns a function that checks if a `Option` contains a given value using a provided `isEquivalent` function.

To import and use `containsWith` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.containsWith
```

**Example**

```ts
import { some, none, containsWith } from '@effect/data/Option'
import { Equivalence } from '@effect/data/Number'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(pipe(some(2), containsWith(Equivalence)(2)), true)
assert.deepStrictEqual(pipe(some(1), containsWith(Equivalence)(2)), false)
assert.deepStrictEqual(pipe(none(), containsWith(Equivalence)(2)), false)
```

**Signature**

```ts
export declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Option<A>) => boolean
  (self: Option<A>, a: A): boolean
}
```
