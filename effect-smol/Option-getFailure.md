Package: `effect`<br />
Module: `Option`<br />

## Option.getFailure

Converts a `Result` into an `Option`, keeping only the failure value.

**When to use**

Use to extract the failure when you do not need the success value

**Details**

- `Failure` becomes `Some` with the failure value
- `Success` becomes `None` and the success value is discarded

**Example** (Extracting the failure side)

```ts
import { Option, Result } from "effect"

console.log(Option.getFailure(Result.succeed("ok")))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.getFailure(Result.fail("err")))
// Output: { _id: 'Option', _tag: 'Some', value: 'err' }
```

**See**

- `getSuccess` for the opposite operation.

**Signature**

```ts
declare const getFailure: <A, E>(self: Result<A, E>) => Option<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L640)

Since v4.0.0