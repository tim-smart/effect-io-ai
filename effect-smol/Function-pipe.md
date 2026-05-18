Package: `effect`<br />
Module: `Function`<br />

## Function.pipe

Pipes the value of an expression into a pipeline of functions.

**Details**

The `pipe` function is a utility that allows us to compose functions in a
readable and sequential manner. It takes the output of one function and
passes it as the input to the next function in the pipeline. This enables us
to build complex transformations by chaining multiple functions together.

**Example** (Showing pipeline syntax)

```ts
import { pipe } from "effect"

const result = pipe(
  1,
  (n) => n + 1,
  (n) => n * 2,
  (n) => `result: ${n}`
)

console.log(result) // "result: 4"
```

In this syntax, `1` is the initial value, and each function is applied in
sequence. The result of each function becomes the input for the next
function, and the final result is returned.

Here's an illustration of how `pipe` works:

```
┌───┐    ┌───────┐    ┌─────────────┐    ┌────────┐
│ 1 │───►│ add 1 │───►│ multiply 2  │───►│ format │───► "result: 4"
└───┘    └───────┘    └─────────────┘    └────────┘
```

It's important to note that functions passed to `pipe` must have a **single
argument** because they are only called with a single argument.

**When to Use**

This is useful in combination with data-last functions as a simulation of
methods:

**Example** (Chaining methods before conversion)

```ts
const numbers = [1, 2, 3, 4]
const double = (n: number) => n * 2
const greaterThanFour = (n: number) => n > 4

const result = numbers.map(double).filter(greaterThanFour)

console.log(result) // [6, 8]
```

becomes:

**Example** (Rewriting method chains with pipe)

```ts
import { Array, pipe } from "effect"

const numbers = [1, 2, 3, 4]
const double = (n: number) => n * 2
const greaterThanFour = (n: number) => n > 4

const result = pipe(
  numbers,
  Array.map(double),
  Array.filter(greaterThanFour)
)

console.log(result) // [6, 8]
```

**Example** (Chaining Arithmetic Operations)

```ts
import { pipe } from "effect"

// Define simple arithmetic operations
const increment = (x: number) => x + 1
const double = (x: number) => x * 2
const subtractTen = (x: number) => x - 10

// Sequentially apply these operations using `pipe`
const result = pipe(5, increment, double, subtractTen)

console.log(result)
// Output: 2
```

**Example** (Building a simple transformation pipeline)

```ts
import { pipe } from "effect"

// Simple transformation pipeline
const result = pipe(
  5,
  (x) => x * 2, // 10
  (x) => x + 1, // 11
  (x) => x.toString() // "11"
)

console.log(result) // "11"
```

**Signature**

```ts
declare const pipe: { <A>(a: A): A; <A, B = never>(a: A, ab: (a: A) => B): B; <A, B = never, C = never>(a: A, ab: (a: A) => B, bc: (b: B) => C): C; <A, B = never, C = never, D = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D): D; <A, B = never, C = never, D = never, E = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E): E; <A, B = never, C = never, D = never, E = never, F = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F): F; <A, B = never, C = never, D = never, E = never, F = never, G = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G): G; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H): H; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I): I; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J): J; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K): K; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L): L; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M): M; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N): N; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never, O = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N, no: (n: N) => O): O; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never, O = never, P = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N, no: (n: N) => O, op: (o: O) => P): P; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never, O = never, P = never, Q = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N, no: (n: N) => O, op: (o: O) => P, pq: (p: P) => Q): Q; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never, O = never, P = never, Q = never, R = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N, no: (n: N) => O, op: (o: O) => P, pq: (p: P) => Q, qr: (q: Q) => R): R; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never, O = never, P = never, Q = never, R = never, S = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N, no: (n: N) => O, op: (o: O) => P, pq: (p: P) => Q, qr: (q: Q) => R, rs: (r: R) => S): S; <A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never, L = never, M = never, N = never, O = never, P = never, Q = never, R = never, S = never, T = never>(a: A, ab: (a: A) => B, bc: (b: B) => C, cd: (c: C) => D, de: (d: D) => E, ef: (e: E) => F, fg: (f: F) => G, gh: (g: G) => H, hi: (h: H) => I, ij: (i: I) => J, jk: (j: J) => K, kl: (k: K) => L, lm: (l: L) => M, mn: (m: M) => N, no: (n: N) => O, op: (o: O) => P, pq: (p: P) => Q, qr: (q: Q) => R, rs: (r: R) => S, st: (s: S) => T): T; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1075)

Since v2.0.0