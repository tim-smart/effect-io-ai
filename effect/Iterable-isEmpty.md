## isEmpty

Determine if an `Iterable` is empty

**Example**

```ts
import * as assert from "node:assert"
import { isEmpty } from "effect/Iterable"

assert.deepStrictEqual(isEmpty([]), true);
assert.deepStrictEqual(isEmpty([1, 2, 3]), false);
```

**Signature**

```ts
declare const isEmpty: <A>(self: Iterable<A>) => self is Iterable<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L252)

Since v2.0.0