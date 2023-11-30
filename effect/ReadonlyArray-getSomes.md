# getSomes

Retrieves the `Some` values from an `Iterable` of `Option`s, collecting them into an array.

To import and use `getSomes` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.getSomes
```

**Example**

```ts
import { getSomes } from "effect/ReadonlyArray"
import { some, none } from "effect/Option"

assert.deepStrictEqual(getSomes([some(1), none(), some(2)]), [1, 2])
```

**Signature**

```ts
export declare const getSomes: <A>(self: Iterable<Option<A>>) => A[]
```
