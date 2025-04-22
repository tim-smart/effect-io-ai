Package: `effect`<br />
Module: `Number`<br />

## Number.greaterThan

Returns `true` if the first argument is greater than the second, otherwise
`false`.

**Example**

```ts
import * as assert from "node:assert/strict"
import { greaterThan } from "effect/Number"

assert.equal(greaterThan(2, 3), false)
assert.equal(greaterThan(3, 3), false)
assert.equal(greaterThan(4, 3), true)
```

**Signature**

```ts
declare const greaterThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L807)

Since v2.0.0