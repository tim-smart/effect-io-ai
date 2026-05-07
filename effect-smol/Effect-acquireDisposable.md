Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireDisposable

This function constructs a scoped resource from an Effect that acquires a
disposable value.

The resource is automatically disposed when the surrounding
`Scope` is closed, using `Symbol.dispose` for
synchronous disposables or `Symbol.asyncDispose` for asynchronous
disposables.

This is similar to `acquireRelease`, but uses the standard
JavaScript disposal protocal instead of requiring an explicit release
function.

**Example**

```ts
import sqlite from "node:sqlite";
import { Effect } from "effect";

const program = Effect.scoped(
  Effect.gen(function* () {
    // acquire database connection
    // database will be closed when the scope is closed
    const db = yield* Effect.acquireDisposable(
      Effect.sync(() => new sqlite.DatabaseSync(":memory:"))
    )

    const row = db.prepare("SELECT 1 AS value").get()
    yield* Effect.log(row) // { value: 1 }
  })
)
```

**See**

- `https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/using`

**Signature**

```ts
declare const acquireDisposable: <A extends AsyncDisposable | Disposable, E, R>(acquire: Effect<A, E, R>) => Effect<A, E, R | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6316)

Since v4.0.0