# getRights

Retrieves the `Right` values from an `Iterable` of `Either`s, collecting them into an array.

To import and use `getRights` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.getRights
```

**Example**

```ts
import { getRights } from "effect/ReadonlyArray"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getRights([right(1), left("err"), right(2)]), [1, 2])
```

**Signature**

```ts
export declare const getRights: <R, L>(self: Iterable<Either<R, L>>) => R[]
```
