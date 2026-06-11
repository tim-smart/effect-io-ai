Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.replicate

Returns a `Iterable` containing a value repeated the specified number of times.

**Details**

`n` is normalized to an integer greater than or equal to `1`.

**Example** (Repeating a value)

```ts
import { Iterable } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Array.from(Iterable.replicate("a", 3)), ["a", "a", "a"])
```

**Signature**

```ts
declare const replicate: { (n: number): <A>(a: A) => Iterable<A>; <A>(a: A, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L123)

Since v2.0.0