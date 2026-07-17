Package: `effect`<br />
Module: `Result`<br />

## Result.fromOption

Converts an `Option<A>` into a `Result<A, E>`.

**When to use**

Use when an existing `Option` should become a `Result`, preserving `Some` as
success and turning `None` into a caller-provided failure.

**Details**

- `Some<A>` becomes `Success<A>`
- `None` becomes `Failure<E>` using the provided function
- Supports both data-first and data-last (piped) usage

**Example** (Converting an Option to a Result)

```ts
import { Option, Result } from "effect"

const some = Result.fromOption(Option.some(1), () => "missing")
console.log(some)
// Output: { _tag: "Success", success: 1, ... }

const none = Result.fromOption(Option.none(), () => "missing")
console.log(none)
// Output: { _tag: "Failure", failure: "missing", ... }
```

**See**

- `getSuccess` to extract the success value as an Option
- `getFailure` to extract the failure value as an Option
- `fromNullishOr` to build a Result from nullable values

**Signature**

```ts
declare const fromOption: { <E>(onNone: () => E): <A>(self: Option<A>) => Result<A, E>; <A, E>(self: Option<A>, onNone: () => E): Result<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Result.ts#L459)

Since v2.0.0