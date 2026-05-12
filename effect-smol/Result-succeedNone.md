Package: `effect`<br />
Module: `Result`<br />

## Result.succeedNone

A pre-built `Result<Option<never>>` that succeeds with `None`.

- Equivalent to `Result.succeed(Option.none())` but avoids an extra allocation
- Useful with `transposeOption` patterns

**Example** (Using succeedNone)

```ts
import { Result } from "effect"

console.log(Result.isSuccess(Result.succeedNone))
// Output: true
```

**See**

- `succeedSome` for the `Some` counterpart

**Signature**

```ts
declare const succeedNone: Result<Option<never>, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1676)

Since v4.0.0