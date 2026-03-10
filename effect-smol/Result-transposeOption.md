Package: `effect`<br />
Module: `Result`<br />

## Result.transposeOption

Transforms `Option<Result<A, E>>` into `Result<Option<A>, E>`.

- `None` becomes `Success(None)`
- `Some(Success(a))` becomes `Success(Some(a))`
- `Some(Failure(e))` becomes `Failure(e)`

**Example** (Transposing an Option of a Result)

```ts
import { Option, Result } from "effect"

const some = Option.some(Result.succeed(42))
console.log(Result.transposeOption(some))
// Output: { _tag: "Success", success: { _tag: "Some", value: 42 }, ... }

const none = Option.none<Result.Result<number, string>>()
console.log(Result.transposeOption(none))
// Output: { _tag: "Success", success: { _tag: "None" }, ... }
```

**See**

- `transposeMapOption` to map and transpose in one step

**Signature**

```ts
declare const transposeOption: <A = never, E = never>(self: Option<Result<A, E>>) => Result<Option<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1599)

Since v3.14.0