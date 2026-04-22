Package: `effect`<br />
Module: `Effect`<br />

## Effect.fail

Creates an `Effect` that represents a recoverable error.

**When to Use**

Use this function to explicitly signal an error in an `Effect`. The error
will keep propagating unless it is handled. You can handle the error with
functions like `catchAll` or `catchTag`.

**Example**

```ts
// Title: Creating a Failed Effect
import { Data, Effect } from "effect"

class OperationFailedError extends Data.TaggedError("OperationFailedError")<{}> {}

//      ┌─── Effect<never, OperationFailedError, never>
//      ▼
const failure = Effect.fail(
  new OperationFailedError()
)
```

**See**

- `succeed` to create an effect that represents a successful value.

**Signature**

```ts
declare const fail: <E>(error: E) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1635)

Since v2.0.0