# isSome

Determine if a `Option` is a `Some`.

To import and use `isSome` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.isSome
```

**Example**

```ts
import { some, none, isSome } from "effect/Option"

assert.deepStrictEqual(isSome(some(1)), true)
assert.deepStrictEqual(isSome(none()), false)
```

**Signature**

```ts
export declare const isSome: <A>(self: Option<A>) => self is Some<A>
```
