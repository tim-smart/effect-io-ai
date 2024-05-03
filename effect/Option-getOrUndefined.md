# getOrUndefined

Returns the value of the `Option` if it is a `Some`, otherwise returns `undefined`.

To import and use `getOrUndefined` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrUndefined
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.getOrUndefined(Option.some(1)), 1)
assert.deepStrictEqual(Option.getOrUndefined(Option.none()), undefined)
```

**Signature**

```ts
export declare const getOrUndefined: <A>(self: Option<A>) => A | undefined
```
