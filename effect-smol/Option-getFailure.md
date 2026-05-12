Package: `effect`<br />
Module: `Option`<br />

## Option.getFailure

Converts a `Result` into an `Option`, keeping only the error value.

**When to use**

- Extracting the error when you don't need the success channel

**Behavior**

- `Err` → `Some` with the error value
- `Ok` → `None` (success value is discarded)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L631)

Since v2.0.0