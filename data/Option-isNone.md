# isNone

Determine if a `Option` is a `None`.

To import and use `isNone` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.isNone
```

**Example**

```ts
import { some, none, isNone } from '@effect/data/Option'

assert.deepStrictEqual(isNone(some(1)), false)
assert.deepStrictEqual(isNone(none()), true)
```

**Signature**

```ts
export declare const isNone: <A>(self: Option<A>) => self is None<A>
```
