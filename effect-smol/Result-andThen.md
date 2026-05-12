Package: `effect`<br />
Module: `Result`<br />

## Result.andThen

A flexible variant of `flatMap` that accepts multiple input shapes.

The second argument can be:
- A function `(a: A) => Result<A2, E2>` (same as `flatMap`)
- A function `(a: A) => A2` (auto-wrapped in `succeed`)
- A `Result<A2, E2>` value (ignores the success of `self`)
- A plain value `A2` (auto-wrapped in `succeed`, ignores `self`)

If `self` is a `Failure`, the second argument is never evaluated.

**Example** (Using andThen with different argument types)

```ts
import { pipe, Result } from "effect"

// With a function returning a Result
const a = pipe(
  Result.succeed(1),
  Result.andThen((n) => Result.succeed(n + 1))
)

// With a plain mapping function
const b = pipe(
  Result.succeed(1),
  Result.andThen((n) => n + 1)
)

// With a constant value
const c = pipe(Result.succeed(1), Result.andThen("done"))

console.log(a, b, c)
```

**See**

- `flatMap` for the stricter variant (function returning Result only)
- `map` when you always return a plain value

**Signature**

```ts
declare const andThen: { <A, A2, E2>(f: (a: A) => Result<A2, E2>): <E>(self: Result<A, E>) => Result<A2, E | E2>; <A2, E2>(f: Result<A2, E2>): <A, E>(self: Result<A, E>) => Result<A2, E | E2>; <A, A2>(f: (a: A) => A2): <E>(self: Result<A, E>) => Result<A2, E>; <A2>(right: NotFunction<A2>): <A, E>(self: Result<A, E>) => Result<A2, E>; <A, E, A2, E2>(self: Result<A, E>, f: (a: A) => Result<A2, E2>): Result<A2, E | E2>; <A, E, A2, E2>(self: Result<A, E>, f: Result<A2, E2>): Result<A2, E | E2>; <A, E, A2>(self: Result<A, E>, f: (a: A) => A2): Result<A2, E>; <A, E, A2>(self: Result<A, E>, f: NotFunction<A2>): Result<A2, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1275)

Since v4.0.0