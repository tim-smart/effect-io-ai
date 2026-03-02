Package: `effect`<br />
Module: `Console`<br />

## Console.assert

Writes an assertion message to the console if the condition is false.

If the condition is true, nothing happens. If the condition is false,
the message is logged to the console as an error.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.assert(2 + 2 === 4, "Math is working correctly")
  yield* Console.assert(2 + 2 === 5, "This will be logged as an error")
})
```

**Signature**

```ts
declare const assert: (condition: boolean, ...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L176)

Since v2.0.0