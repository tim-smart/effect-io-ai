# toArray

Converts an `Option` into an `Array`.
If the input is `None`, an empty array is returned.
If the input is `Some`, its value is wrapped in a single-element array.

To import and use `toArray` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.toArray
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.toArray(Option.some(1)))
// Output: [1]

console.log(Option.toArray(Option.none()))
// Output: []
```

**Signature**

```ts
export declare const toArray: <A>(self: Option<A>) => Array<A>
```
