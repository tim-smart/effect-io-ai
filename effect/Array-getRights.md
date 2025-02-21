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
import { Array, Either } from "effect"

assert.deepStrictEqual(Array.getRights([Either.right(1), Either.left("err"), Either.right(2)]), [1, 2])
```

**Signature**

```ts
export declare const getRights: <T extends Iterable<Either<any, any>>>(
  self: T
) => Array<Either.Right<ReadonlyArray.Infer<T>>>
```
