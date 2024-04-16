# getRights

Retrieves the `Right` values from an `Iterable` of `Either`s, collecting them into an array.

To import and use `getRights` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.getRights
```

**Example**

```ts
import { getRights } from "effect/Array"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getRights([right(1), left("err"), right(2)]), [1, 2])
```

**Signature**

```ts
export declare const getRights: <R, L>(self: Iterable<Either<R, L>>) => R[]
```
