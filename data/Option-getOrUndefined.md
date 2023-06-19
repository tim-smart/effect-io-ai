# getOrUndefined

Returns the value of the `Option` if it is a `Some`, otherwise returns `undefined`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.getOrUndefined(O.some(1)), 1)
assert.deepStrictEqual(O.getOrUndefined(O.none()), undefined)
```

**Signature**

```ts
export declare const getOrUndefined: <A>(self: Option<A>) => A | undefined
```
