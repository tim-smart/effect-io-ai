# getSomes

Retrieves the `Some` values from an `Iterable` of `Option`s, collecting them into an array.

To import and use `getSomes` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.getSomes
```

**Example**

```ts
import { getSomes } from "effect/Array"
import { some, none } from "effect/Option"

assert.deepStrictEqual(getSomes([some(1), none(), some(2)]), [1, 2])
```

**Signature**

```ts
export declare const getSomes: <A>(self: Iterable<Option<A>>) => A[]
```
