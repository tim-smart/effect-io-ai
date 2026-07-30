Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.range

Return a `Iterable` containing a range of integers, including both endpoints.

If `end` is omitted, the range will not have an upper bound.

**Example**

```ts
import * as assert from "node:assert"
import { range } from "effect/Iterable"

assert.deepStrictEqual(Array.from(range(1, 3)), [1, 2, 3])
```

**Signature**

```ts
declare const range: (start: number, end?: number) => Iterable<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L72)

Since v2.0.0