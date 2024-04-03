# getRights

Retrieves the `Right` values from an `Iterable` of `Either`s.

To import and use `getRights` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.getRights
```

**Example**

```ts
import { getRights } from "effect/Iterable"
import { right, left } from "effect/Either"

assert.deepStrictEqual(Array.from(getRights([right(1), left("err"), right(2)])), [1, 2])
```

**Signature**

```ts
export declare const getRights: <R, L>(self: Iterable<Either<R, L>>) => Iterable<R>
```
