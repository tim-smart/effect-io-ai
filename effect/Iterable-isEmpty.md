Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.isEmpty

Checks whether an `Iterable` is empty.

**Example** (Checking for emptiness)

```ts
import { Iterable } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Iterable.isEmpty([]), true)
assert.deepStrictEqual(Iterable.isEmpty([1, 2, 3]), false)
```

**Signature**

```ts
declare const isEmpty: <A>(self: Iterable<A>) => self is Iterable<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L438)

Since v2.0.0