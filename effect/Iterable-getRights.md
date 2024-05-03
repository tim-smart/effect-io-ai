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
import { Iterable, Either } from "effect"

assert.deepStrictEqual(Array.from(Iterable.getRights([Either.right(1), Either.left("err"), Either.right(2)])), [1, 2])
```

**Signature**

```ts
export declare const getRights: <R, L>(self: Iterable<Either<R, L>>) => Iterable<R>
```
