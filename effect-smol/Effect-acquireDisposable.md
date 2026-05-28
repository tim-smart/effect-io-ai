Package: `effect`<br />
Module: `Effect`<br />

## Effect.acquireDisposable

Acquires a scoped resource that implements JavaScript disposal protocols.

**When to use**

Use with JavaScript `Disposable` or `AsyncDisposable` resources that should
be closed with the surrounding scope.

**Details**

The resource is automatically disposed when the surrounding
`Scope` is closed, using `Symbol.dispose` for
synchronous disposables or `Symbol.asyncDispose` for asynchronous
disposables.

This is similar to `acquireRelease`, but uses the standard
JavaScript disposal protocol instead of requiring an explicit release
function. It works with JavaScript `Disposable` and `AsyncDisposable`
resources.

**Example** (Acquiring a disposable resource)

```ts
import sqlite from "node:sqlite";
import { Effect } from "effect"

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

- `acquireRelease` for resources that need an explicit finalizer

**Signature**

```ts
declare const acquireDisposable: <A extends AsyncDisposable | Disposable, E, R>(acquire: Effect<A, E, R>) => Effect<A, E, R | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6517)

Since v4.0.0