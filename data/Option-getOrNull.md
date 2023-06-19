# getOrNull

Returns the value of the `Option` if it is a `Some`, otherwise returns `null`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.getOrNull(O.some(1)), 1)
assert.deepStrictEqual(O.getOrNull(O.none()), null)
```

**Signature**

```ts
export declare const getOrNull: <A>(self: Option<A>) => A | null
```
