# getOrNull

Returns the value of the `Option` if it is a `Some`, otherwise returns `null`.

To import and use `getOrNull` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrNull
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.getOrNull(Option.some(1)), 1)
assert.deepStrictEqual(Option.getOrNull(Option.none()), null)
```

**Signature**

```ts
export declare const getOrNull: <A>(self: Option<A>) => A | null
```
