# getOrThrow

Extracts the value of an `Option` or throws a default error if the `Option`
is `None`.

**Details**

This function extracts the value from an `Option` if it is `Some`. If the
`Option` is `None`, it throws a default error. It is useful for fail-fast
scenarios where the absence of a value is treated as an exceptional case and
a default error is sufficient.

To import and use `getOrThrow` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrThrow
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.getOrThrow(Option.some(1)), 1)
assert.throws(() => Option.getOrThrow(Option.none()))
```

**Signature**

```ts
export declare const getOrThrow: <A>(self: Option<A>) => A
```
