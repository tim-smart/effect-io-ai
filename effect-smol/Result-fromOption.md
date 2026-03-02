Package: `effect`<br />
Module: `Result`<br />

## Result.fromOption

Converts an `Option<A>` into a `Result<A, E>`.

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

- `getSuccess` / `getFailure` to convert back to Option
- `fromNullishOr` to convert from nullable values

**Signature**

```ts
declare const fromOption: { <E>(onNone: () => E): <A>(self: Option<A>) => Result<A, E>; <A, E>(self: Option<A>, onNone: () => E): Result<A, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L452)

Since v4.0.0