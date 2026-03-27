Package: `effect`<br />
Module: `Effect`<br />

## Effect.fnUntraced

Creates an Effect-returning function without tracing.

`Effect.fnUntraced` also acts as a `pipe` function, so you can append transforms after the body.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L12866)

Since v3.12.0