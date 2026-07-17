Package: `effect`<br />
Module: `Number`<br />

## Number.sum

Provides an addition operation on `number`s.

**When to use**

Use to add two numbers.

**Example** (Adding numbers)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.sum(2, 3), 5)
```

**See**

- `sumAll` for summing an iterable of numbers

**Signature**

```ts
declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L93)

Since v2.0.0