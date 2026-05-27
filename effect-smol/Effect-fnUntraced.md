Package: `effect`<br />
Module: `Effect`<br />

## Effect.fnUntraced

Creates an Effect-returning function without tracing.

**Details**

`Effect.fnUntraced` also acts as a `pipe` function, so you can append transforms after the body.

**Example** (Defining untraced effect functions)

```ts
import { Console, Effect } from "effect"

const greet = Effect.fnUntraced(function* (name: string) {
  yield* Console.log(`Hello, ${name}`)
  return name.length
})

Effect.runFork(greet("Ada"))
```

**Signature**

```ts
declare const fnUntraced: fn.Untraced
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13371)

Since v3.12.0