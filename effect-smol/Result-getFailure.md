Package: `effect`<br />
Module: `Result`<br />

## Result.getFailure

Extracts the failure value as an `Option`, discarding the success.

- `Failure<E>` becomes `Some<E>`
- `Success<A>` becomes `None`
- Use when you only care about the error case

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L664)

Since v4.0.0