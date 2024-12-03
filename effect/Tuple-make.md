# make

Constructs a new tuple from the provided values.

To import and use `make` from the "Tuple" module:

```ts
import * as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.make
```

**Example**

```ts
import { make } from "effect/Tuple"

assert.deepStrictEqual(make(1, "hello", true), [1, "hello", true])
```

**Signature**

```ts
export declare const make: <A extends ReadonlyArray<any>>(...elements: A) => A
```
