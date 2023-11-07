# getOrNull

Returns the value of the `Option` if it is a `Some`, otherwise returns `null`.

To import and use `getOrNull` from the "Option" module:

```ts
import * as Option from 'effect/Option'

// Can be accessed like this
Option.getOrNull
```

**Example**

```ts
import * as O from 'effect/Option'

assert.deepStrictEqual(O.getOrNull(O.some(1)), 1)
assert.deepStrictEqual(O.getOrNull(O.none()), null)
```

**Signature**

```ts
export declare const getOrNull: <A>(self: Option<A>) => A | null
```
