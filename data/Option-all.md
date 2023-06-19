# all

Similar to `Promise.all` but operates on `Option`s.

```
Iterable<Option<A>> -> Option<A[]>
```

Flattens a collection of `Option`s into a single `Option` that contains a list of all the `Some` values.
If there is a `None` value in the collection, it returns `None` as the result.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.all([O.some(1), O.some(2), O.some(3)]), O.some([1, 2, 3]))
assert.deepStrictEqual(O.all([O.some(1), O.none(), O.some(3)]), O.none())
```

**Signature**

```ts
export declare const all: <A>(collection: Iterable<Option<A>>) => Option<A[]>
```
