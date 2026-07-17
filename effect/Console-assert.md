Package: `effect`<br />
Module: `Console`<br />

## Console.assert

Writes the supplied assertion message to the console as an error when `condition` is false; when `condition` is true, no console output is produced.

**Example** (Logging failed assertions)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Console.ts#L117)

Since v2.0.0