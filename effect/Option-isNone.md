# isNone

Checks whether an `Option` represents the absence of a value (`None`).

To import and use `isNone` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.isNone
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.isNone(Option.some(1)))
// Output: false

console.log(Option.isNone(Option.none()))
// Output: true
```

**Signature**

```ts
export declare const isNone: <A>(self: Option<A>) => self is None<A>
```
