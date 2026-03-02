Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.isEmpty

Determine if an `Iterable` is empty

**Example**

```ts
import { isEmpty } from "effect/Iterable"
import * as assert from "node:assert"

assert.deepStrictEqual(isEmpty([]), true)
assert.deepStrictEqual(isEmpty([1, 2, 3]), false)
```

**Signature**

```ts
declare const isEmpty: <A>(self: Iterable<A>) => self is Iterable<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L381)

Since v2.0.0