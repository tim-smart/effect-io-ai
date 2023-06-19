# firstSomeOf

Given an `Iterable` collection of `Option`s, returns the first `Some` found in the collection.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.firstSomeOf([O.none(), O.some(1), O.some(2)]), O.some(1))
```

**Signature**

```ts
export declare const firstSomeOf: <A>(collection: Iterable<Option<A>>) => Option<A>
```
