Package: `effect`<br />
Module: `Flag`<br />

## Flag.orElseResult

Tries to parse with the first flag, then the second, returning a Result that indicates which succeeded.

**Example**

```ts
import { Effect, Result } from "effect"
import { Flag } from "effect/unstable/cli"

// Try file path, fallback to URL
const sourceFlag = Flag.orElseResult(
  Flag.file("source"),
  () => Flag.string("source-url")
)

const program = Effect.gen(function*() {
  const [leftover, source] = yield* sourceFlag.parse({
    arguments: [],
    flags: { "source-url": ["https://google.com"] }
  })
  if (Result.isSuccess(source)) {
    console.log("Using file:", source.success)
  } else {
    console.log("Using URL:", source.failure)
  }
})
```

**Signature**

```ts
declare const orElseResult: { <B>(that: LazyArg<Flag<B>>): <A>(self: Flag<A>) => Flag<Result.Result<A, B>>; <A, B>(self: Flag<A>, that: LazyArg<Flag<B>>): Flag<Result.Result<A, B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L844)

Since v4.0.0