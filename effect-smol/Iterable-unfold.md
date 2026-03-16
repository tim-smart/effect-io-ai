Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.unfold

Generates an iterable by repeatedly applying a function that produces the
next element and state.

This is useful for creating iterables from a generating function that
maintains state. The function should return `Option.some([value, nextState])`
to continue or `Option.none()` to stop.

**Example**

```ts
import { Iterable, Option } from "effect"

// Generate Fibonacci sequence
const fibonacci = Iterable.unfold([0, 1], ([a, b]) => Option.some([a, [b, a + b]]))
const first10Fib = Iterable.take(fibonacci, 10)
console.log(Array.from(first10Fib)) // [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

// Generate powers of 2 up to a limit
const powersOf2 = Iterable.unfold(1, (n) => n <= 1000 ? Option.some([n, n * 2]) : Option.none())
console.log(Array.from(powersOf2)) // [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]

// Generate countdown
const countdown = Iterable.unfold(5, (n) => n > 0 ? Option.some([n, n - 1]) : Option.none())
console.log(Array.from(countdown)) // [5, 4, 3, 2, 1]

// Generate collatz sequence
const collatz = Iterable.unfold(7, (n) => {
  if (n === 1) return Option.none()
  const next = n % 2 === 0 ? n / 2 : n * 3 + 1
  return Option.some([n, next])
})
console.log(Array.from(collatz)) // [7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2]
```

**Signature**

```ts
declare const unfold: <B, A>(b: B, f: (b: B) => Option<readonly [A, B]>) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1982)

Since v2.0.0