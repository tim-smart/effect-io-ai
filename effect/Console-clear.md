Package: `effect`<br />
Module: `Console`<br />

## Console.clear

Runs the current console service's clear operation.

**When to use**

Use to request that the active console implementation clear its visible
output.

**Gotchas**

The clearing behavior depends on the active console implementation and host
environment.

**Example** (Clearing console output)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.log("This will be cleared")
  yield* Console.clear
  yield* Console.log("This appears after clearing")
})
```

**Signature**

```ts
declare const clear: Effect.Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Console.ts#L152)

Since v2.0.0