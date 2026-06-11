Package: `effect`<br />
Module: `Result`<br />

## Result.getSuccess

Extracts the success value as an `Option`, discarding the failure.

**When to use**

Use when you need to extract the success value from a `Result` as an
`Option` and discard failure information.

**Details**

- `Success<A>` becomes `Some<A>`
- `Failure<E>` becomes `None`

**Example** (Extracting the success as an Option)

```ts
import { Option, Result } from "effect"

console.log(Result.getSuccess(Result.succeed("ok")))
// Output: { _tag: "Some", value: "ok" }

console.log(Result.getSuccess(Result.fail("err")))
// Output: { _tag: "None" }
```

**See**

- `getFailure` to extract the error instead
- `fromOption` for the reverse conversion

**Signature**

```ts
declare const getSuccess: <A, E>(self: Result<A, E>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L658)

Since v4.0.0