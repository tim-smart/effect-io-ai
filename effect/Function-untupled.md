## untupled

Inverse function of `tupled`

**Example**

```ts
import * as assert from "node:assert"
import { untupled } from "effect/Function"

const getFirst = untupled(<A, B>(tuple: [A, B]): A => tuple[0])

assert.deepStrictEqual(getFirst(1, 2), 1)
```

**Signature**

```ts
declare const untupled: <A extends ReadonlyArray<unknown>, B>(f: (a: A) => B) => (...a: A) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L435)

Since v2.0.0