Package: `effect`<br />
Module: `Result`<br />

## Result.getOrThrowWith

Extracts the success value or throws a custom error derived from the failure.

**When to use**

Use when converting a `Result` into a thrown exception with a custom error
message or error type.

**Details**

- `Success<A>` returns `A`
- `Failure<E>` throws the value returned by `onFailure(e)`

**Example** (Throwing a custom error)

```ts
import { Result } from "effect"

console.log(
  Result.getOrThrowWith(Result.succeed(1), () => new Error("fail"))
)
// Output: 1

// This would throw: new Error("Unexpected: oops")
// Result.getOrThrowWith(
//   Result.fail("oops"),
//   (err) => new Error(`Unexpected: ${err}`)
// )
```

**See**

- `getOrThrow` to throw the raw failure value
- `getOrElse` for a non-throwing alternative

**Signature**

```ts
declare const getOrThrowWith: { <E>(onFailure: (err: E) => unknown): <A>(self: Result<A, E>) => A; <A, E>(self: Result<A, E>, onFailure: (err: E) => unknown): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1216)

Since v2.0.0