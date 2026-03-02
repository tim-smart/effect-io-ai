Package: `effect`<br />
Module: `Result`<br />

## Result.gen

Generator-based syntax for composing `Result` values sequentially.

- Use `yield*` to unwrap a `Result` inside the generator; if any yielded
  `Result` is a `Failure`, the generator short-circuits and returns that failure
- The return value of the generator is wrapped in `Success`
- Evaluated eagerly and synchronously (unlike `Effect.gen`)

**Example** (Composing multiple Results)

```ts
import { Result } from "effect"

const result = Result.gen(function*() {
  const a = yield* Result.succeed(1)
  const b = yield* Result.succeed(2)
  return a + b
})

console.log(result)
// Output: { _tag: "Success", success: 3, ... }
```

**See**

- `flatMap` for point-free sequential composition
- `all` to collect multiple independent Results

**Signature**

```ts
declare const gen: Gen.Gen<ResultTypeLambda>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1410)

Since v4.0.0