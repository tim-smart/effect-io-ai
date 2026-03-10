Package: `effect`<br />
Module: `Result`<br />

## Result.transposeMapOption

Maps an `Option` value with a `Result`-producing function, then transposes
the structure from `Option<Result<B, E>>` to `Result<Option<B>, E>`.

- `None` becomes `Success(None)` (the function is never called)
- `Some(a)` where `f(a)` is `Success(b)` becomes `Success(Some(b))`
- `Some(a)` where `f(a)` is `Failure(e)` becomes `Failure(e)`

**Example** (Map and transpose in one step)

```ts
import { Option, Result } from "effect"

const parse = (s: string) =>
  isNaN(Number(s))
    ? Result.fail("not a number" as const)
    : Result.succeed(Number(s))

console.log(Result.transposeMapOption(Option.some("42"), parse))
// Output: { _tag: "Success", success: { _tag: "Some", value: 42 }, ... }

console.log(Result.transposeMapOption(Option.none(), parse))
// Output: { _tag: "Success", success: { _tag: "None" }, ... }
```

**See**

- `transposeOption` when the Option already contains a Result

**Signature**

```ts
declare const transposeMapOption: (<A, B, E = never>(f: (self: A) => Result<B, E>) => (self: Option<A>) => Result<Option<B>, E>) & (<A, B, E = never>(self: Option<A>, f: (self: A) => Result<B, E>) => Result<Option<B>, E>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1635)

Since v3.15.0