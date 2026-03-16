Package: `effect`<br />
Module: `Option`<br />

## Option.getSuccess

Converts a `Result` into an `Option`, keeping only the success value.

**When to use**

- Discarding the error channel when you only care about success

**Behavior**

- `Ok` → `Some` with the success value
- `Err` → `None` (error is discarded)

**Example** (Extracting the success side)

```ts
import { Option, Result } from "effect"

console.log(Option.getSuccess(Result.succeed("ok")))
// Output: { _id: 'Option', _tag: 'Some', value: 'ok' }

console.log(Option.getSuccess(Result.fail("err")))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `getFailure` for the opposite operation.

**Signature**

```ts
declare const getSuccess: <A, E>(self: Result<A, E>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L593)

Since v2.0.0