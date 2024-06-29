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
import { Array, Option } from "effect"

assert.deepStrictEqual(Array.getSomes([Option.some(1), Option.none(), Option.some(2)]), [1, 2])
```

**Signature**

```ts
export declare const getSomes: <T extends Iterable<Option<X>>, X = any>(
  self: T
) => Option.Value<ReadonlyArray.Infer<T>>[]
```
