Package: `effect`<br />
Module: `Console`<br />

## Console.group

Creates a scoped console group, optionally collapsed and labeled, and closes it automatically when the Effect scope is finalized.

**Example** (Grouping scoped output)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L405)

Since v2.0.0