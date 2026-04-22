Package: `effect`<br />
Module: `Effect`<br />

## Effect.whileLoop

Executes a body effect repeatedly while a condition holds true.

**Example**

```ts
import { Effect } from "effect"

let counter = 0

const program = Effect.whileLoop({
  while: () => counter < 5,
  body: () => Effect.sync(() => ++counter),
  step: (n) => console.log(`Current count: ${n}`)
})

Effect.runPromise(program)
// Output:
// Current count: 1
// Current count: 2
// Current count: 3
// Current count: 4
// Current count: 5
```

**Signature**

```ts
declare const whileLoop: <A, E, R>(options: { readonly while: LazyArg<boolean>; readonly body: LazyArg<Effect<A, E, R>>; readonly step: (a: A) => void; }) => Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1022)

Since v2.0.0