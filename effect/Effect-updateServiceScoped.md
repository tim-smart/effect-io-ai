Package: `effect`<br />
Module: `Effect`<br />

## Effect.updateServiceScoped

Updates a service for the lifetime of the current scope and restores its
previous value when the scope closes.

**When to use**

Use when you need a setup effect to change a service for subsequent effects
in the same scope.

**Details**

The updater receives the currently visible service value. A
`Context.Service` remains in the requirements, while a `Context.Reference`
uses its default when no override is present and adds no service requirement.
The returned effect always requires `Scope`. The optional `reset` function
receives the original, updated, and current values when the scope closes,
allowing changes to be merged during restoration. It defaults to returning
the original value.

**Example** (Updating a reference within a scope)

```ts
import { Context, Effect } from "effect"

const CurrentNumber = Context.Reference<number>("CurrentNumber", {
  defaultValue: () => 1
})

const program = Effect.gen(function*() {
  const before = yield* CurrentNumber
  const during = yield* Effect.scoped(
    Effect.gen(function*() {
      yield* Effect.updateServiceScoped(
        CurrentNumber,
        (value) => value + 1,
        {
          // Optional: when omitted, the original value is restored
          reset: (original, updated, current) =>
            Math.max(original, updated, current) + 1
        }
      )
      return yield* CurrentNumber
    })
  )
  const after = yield* CurrentNumber

  console.log([before, during, after])
  // [1, 2, 3]
})

Effect.runPromise(program)
```

**See**

- `updateService` for updating a service only within a wrapped effect

**Signature**

```ts
declare const updateServiceScoped: <I, A>(service: Context.Key<I, A>, f: (value: A) => A, options?: { readonly reset?: ((original: A, updated: A, current: A) => A) | undefined; } | undefined) => Effect<void, never, I | Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6283)

Since v4.0.0