# isSome

Determine if a `Option` is a `Some`.

To import and use `isSome` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.isSome
undefined

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.isSome(Option.some(1)), true)
assert.deepStrictEqual(Option.isSome(Option.none()), false)
```

**Signature**

```ts
export declare const isSome: <A>(self: Option<A>) => self is Some<A>
```
