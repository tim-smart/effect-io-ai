Package: `effect`<br />
Module: `Console`<br />

## Console.group

Creates a new inline group in the console and returns a scoped Effect.

This function creates a collapsible group of console messages. The group
is automatically closed when the Effect's scope is finalized.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.scoped(
    Effect.gen(function*() {
      yield* Console.group({ label: "User Processing" })
      yield* Console.log("Loading user data...")
      yield* Console.log("Validating user...")
      yield* Console.log("User processed successfully")
    })
  )
})
```

**Signature**

```ts
declare const group: (options?: { label?: string | undefined; collapsed?: boolean | undefined; } | undefined) => Effect.Effect<void, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L396)

Since v2.0.0