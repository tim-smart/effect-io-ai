# toArray

Transforms an `Option` into an `Array`.
If the input is `None`, an empty array is returned.
If the input is `Some`, the value is wrapped in an array.

To import and use `toArray` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.toArray
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.toArray(Option.some(1)), [1])
assert.deepStrictEqual(Option.toArray(Option.none()), [])
```

**Signature**

```ts
export declare const toArray: <A>(self: Option<A>) => Array<A>
```
