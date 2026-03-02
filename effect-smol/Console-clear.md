Package: `effect`<br />
Module: `Console`<br />

## Console.clear

Clears the console.

This function clears all previously logged messages from the console.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L202)

Since v2.0.0