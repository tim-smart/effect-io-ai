Package: `effect`<br />
Module: `Console`<br />

## Console.withGroup

Wraps an Effect with a console group.

This function creates a console group around the execution of an Effect,
automatically starting the group before the Effect runs and ending it
after the Effect completes.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.withGroup(
    Effect.gen(function*() {
      yield* Console.log("Step 1: Initialize")
      yield* Console.log("Step 2: Process")
      yield* Console.log("Step 3: Complete")
    }),
    { label: "Processing Steps", collapsed: false }
  )
})
```

**Signature**

```ts
declare const withGroup: ((options?: { readonly label?: string | undefined; readonly collapsed?: boolean | undefined; }) => <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) & (<A, E, R>(self: Effect.Effect<A, E, R>, options?: { readonly label?: string | undefined; readonly collapsed?: boolean | undefined; }) => Effect.Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L652)

Since v2.0.0