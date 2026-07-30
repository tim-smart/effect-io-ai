Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.getSomes

Retrieves the `Some` values from an `Iterable` of `Option`s.

**Example**

```ts
import * as assert from "node:assert"
import { Iterable, Option } from "effect"

assert.deepStrictEqual(
  Array.from(Iterable.getSomes([Option.some(1), Option.none(), Option.some(2)])),
  [1, 2]
)
```

**Signature**

```ts
declare const getSomes: <A>(self: Iterable<Option<A>>) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L851)

Since v2.0.0