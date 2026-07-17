Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.range

Returns an iterable of integers starting at `start` and increasing by `1`.

**Details**

When `end` is provided and `start <= end`, both endpoints are included. When
`end` is omitted, the iterable is unbounded. When `start > end`, the
iterable contains only `start`.

**Example** (Creating a range)

```ts
import { Iterable } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Array.from(Iterable.range(1, 3)), [1, 2, 3])
```

**Signature**

```ts
declare const range: (start: number, end?: number) => Iterable<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L95)

Since v2.0.0