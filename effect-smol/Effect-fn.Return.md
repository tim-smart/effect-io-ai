Package: `effect`<br />
Module: `Effect`<br />

## Effect.fn.Return

Generator return type accepted by `fn` and `fnUntraced`.

**When to use**

Use when you need to annotate the return type of a generator body while
keeping the produced function's `Effect` return type inferred.

**Example** (Annotating an Effect function)

```ts
import { Effect } from "effect"

const f = Effect.fnUntraced(function*(
  value: string
): Effect.fn.Return<number> {
  return yield* Effect.succeed(value.length)
})

//      ┌─── Effect.Effect<number>
//      ▼
const program = f("hello")
```

**Example** (Annotating a parametric Effect function)

```ts
import { Effect } from "effect"

const f = Effect.fnUntraced(function*<A>(
  value: A
): Effect.fn.Return<A> {
  return yield* Effect.succeed(value)
})

//      ┌─── Effect.Effect<string>
//      ▼
const program = f("hello")
```

**Signature**

```ts
type Return<A, E, R> = Generator<Effect<any, E, R>, A, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L9386)

Since v3.19.0