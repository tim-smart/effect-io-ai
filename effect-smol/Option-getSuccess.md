Package: `effect`<br />
Module: `Option`<br />

## Option.getSuccess

Converts a `Result` into an `Option`, keeping only the success value.

**When to Use**

- Discarding the failure channel when you only care about success

**Details**

- `Success` becomes `Some` with the success value
- `Failure` becomes `None` and the failure value is discarded

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L578)

Since v4.0.0