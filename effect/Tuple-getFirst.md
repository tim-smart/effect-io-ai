# getFirst

Return the first element of a tuple.

To import and use `getFirst` from the "Tuple" module:

```ts
import * as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.getFirst
```

**Example**

```ts
import { getFirst } from "effect/Tuple"

assert.deepStrictEqual(getFirst(["hello", 42]), "hello")
```

**Signature**

```ts
export declare const getFirst: <L, R>(self: readonly [L, R]) => L
```
