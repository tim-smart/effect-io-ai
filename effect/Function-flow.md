Package: `effect`<br />
Module: `Function`<br />

## Function.flow

Performs left-to-right function composition. The first argument may have any arity, the remaining arguments must be unary.

See also [`pipe`](#pipe).

**Example**

```ts
import * as assert from "node:assert"
import { flow } from "effect/Function"

const len = (s: string): number => s.length
const double = (n: number): number => n * 2

const f = flow(len, double)

assert.strictEqual(f('aaa'), 6)
```

**Signature**

```ts
declare const flow: { <A extends ReadonlyArray<unknown>, B = never>(ab: (...a: A) => B): (...a: A) => B; <A extends ReadonlyArray<unknown>, B = never, C = never>(ab: (...a: A) => B, bc: (b: B) => C): (...a: A) => C; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D): (...a: A) => D; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never, E = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E): (...a: A) => E; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never, E = never, F = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F): (...a: A) => F; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never, E = never, F = never, G = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G): (...a: A) => G; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never, E = never, F = never, G = never, H = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H): (...a: A) => H; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I): (...a: A) => I; <A extends ReadonlyArray<unknown>, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never>(ab: (...a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J): (...a: A) => J; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L1149)

Since v2.0.0