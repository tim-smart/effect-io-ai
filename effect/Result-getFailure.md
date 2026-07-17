Package: `effect`<br />
Module: `Result`<br />

## Result.getFailure

Extracts the failure value as an `Option`, discarding the success.

**When to use**

Use when you need to extract the failure value from a `Result` as an
`Option` and discard successful values.

**Details**

- `Failure<E>` becomes `Some<E>`
- `Success<A>` becomes `None`

**Example** (Extracting the failure as an Option)

```ts
import { Option, Result } from "effect"

console.log(Result.getFailure(Result.succeed("ok")))
// Output: { _tag: "None" }

console.log(Result.getFailure(Result.fail("err")))
// Output: { _tag: "Some", value: "err" }
```

**See**

- `getSuccess` to extract the success instead
- `fromOption` for the reverse conversion

**Signature**

```ts
declare const getFailure: <A, E>(self: Result<A, E>) => Option<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Result.ts#L691)

Since v4.0.0