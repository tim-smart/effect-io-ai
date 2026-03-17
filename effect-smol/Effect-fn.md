Package: `effect`<br />
Module: `Effect`<br />

## Effect.fn

Creates a traced function with an optional span name and `SpanOptionsNoTrace` that adds spans and stack frames, plus pipeable post-processing that receives the Effect and the original arguments.

Pipeable functions run after the body and can transform the resulting Effect.

**Example**

```ts
import { Console, Effect } from "effect"

// Create a named span and post-process the returned Effect.
const greet = Effect.fn("greet")(
  function*(name: string) {
    yield* Console.log(`Hello, ${name}`)
    return name.length
  },
  Effect.map((length) => length + 1)
)

const program = Effect.gen(function*() {
  const result = yield* greet("Ada")
  yield* Console.log(`Length: ${result}`)
})
```

**Signature**

```ts
declare const fn: fn.Traced & ((name: string, options?: SpanOptionsNoTrace) => fn.Traced)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L12909)

Since v3.12.0