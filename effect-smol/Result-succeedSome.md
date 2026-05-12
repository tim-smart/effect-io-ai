Package: `effect`<br />
Module: `Result`<br />

## Result.succeedSome

Creates a `Result<Option<A>>` that succeeds with `Some(a)`.

- Equivalent to `Result.succeed(Option.some(a))`
- Useful with `transposeOption` patterns

**Example** (Wrapping a value in Some inside a Result)

```ts
import { Result } from "effect"

const result = Result.succeedSome(42)
console.log(result)
// Output: { _tag: "Success", success: { _tag: "Some", value: 42 }, ... }
```

**See**

- `succeedNone` for the `None` counterpart

**Signature**

```ts
declare const succeedSome: <A, E = never>(a: A) => Result<Option<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1699)

Since v4.0.0