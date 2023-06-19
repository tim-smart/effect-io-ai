# toArray

Transforms an `Option` into an `Array`.
If the input is `None`, an empty array is returned.
If the input is `Some`, the value is wrapped in an array.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.toArray(O.some(1)), [1])
assert.deepStrictEqual(O.toArray(O.none()), [])
```

**Signature**

```ts
export declare const toArray: <A>(self: Option<A>) => A[]
```
