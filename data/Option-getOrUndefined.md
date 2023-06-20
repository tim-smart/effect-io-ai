# getOrUndefined

Returns the value of the `Option` if it is a `Some`, otherwise returns `undefined`.

To import and use `getOrUndefined` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.getOrUndefined
```

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
