Package: `effect`<br />
Module: `Ordering`<br />

## Ordering.reverse

Inverts the ordering of the input `Ordering`.

**Example**

```ts
import * as assert from "node:assert"
import { reverse } from "effect/Ordering"

assert.deepStrictEqual(reverse(1), -1)
assert.deepStrictEqual(reverse(-1), 1)
assert.deepStrictEqual(reverse(0), 0)
```

**Signature**

```ts
declare const reverse: (o: Ordering) => Ordering
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ordering.ts#L28)

Since v2.0.0