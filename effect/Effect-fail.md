Package: `effect`<br />
Module: `Effect`<br />

## Effect.fail

Creates an `Effect` that represents a recoverable error.

**When to Use**

Use this function to explicitly signal an error in an `Effect`. The error
will keep propagating unless it is handled. You can handle the error with
functions like `catchAll` or `catchTag`.

**Example** (Creating a Failed Effect)

```ts
import { Effect } from "effect"

//      ┌─── Effect<never, Error, never>
//      ▼
const failure = Effect.fail(
  new Error("Operation failed due to network error")
)
```

**See**

- `succeed` to create an effect that represents a successful value.

**Signature**

```ts
declare const fail: <E>(error: E) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2575)

Since v2.0.0