# tuple

Constructs a new tuple from the provided values.

To import and use `tuple` from the "Tuple" module:

```ts
import * as Tuple from 'effect/Tuple'

// Can be accessed like this
Tuple.tuple
```

**Example**

```ts
import { tuple } from 'effect/Tuple'

assert.deepStrictEqual(tuple(1, 'hello', true), [1, 'hello', true])
```

**Signature**

```ts
export declare const tuple: <A extends readonly any[]>(...elements: A) => A
```
