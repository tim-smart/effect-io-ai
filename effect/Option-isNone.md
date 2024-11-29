# isNone

Determine if a `Option` is a `None`.

To import and use `isNone` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.isNone
undefined

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.isNone(Option.some(1)), false)
assert.deepStrictEqual(Option.isNone(Option.none()), true)
```

**Signature**

```ts
export declare const isNone: <A>(self: Option<A>) => self is None<A>
```
