# tuple

Constructs a new tuple from the provided values.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Example**

```ts
import { tuple } from '@effect/data/Tuple'

assert.deepStrictEqual(tuple(1, 'hello', true), [1, 'hello', true])
```

**Signature**

```ts
export declare const tuple: <A extends readonly any[]>(...elements: A) => A
```
