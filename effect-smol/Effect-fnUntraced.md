Package: `effect`<br />
Module: `Effect`<br />

## Effect.fnUntraced

Creates an Effect-returning function without tracing.

**When to use**

Use when you are defining a reusable Effect function whose implementation
would otherwise be a normal function returning `gen`, especially when
tracing spans or stack-frame capture are not needed.

**Details**

Compared to a plain function that returns `gen`, `Effect.fnUntraced`
reuses the generator body instead of allocating a fresh generator closure
around the arguments on every call. It does not record an Effect stack-frame
boundary and does not create tracing spans. Use `fn` when you need
those stack frames or spans. Additional arguments after the generator body
act like `pipe` transforms: each transform receives the previous result and
the original function arguments. Annotate the generator return type with
`Effect.fn.Return<A, E, R>` when the produced `Effect` type needs to be
stated explicitly.

**Example** (Defining untraced effect functions)

```ts
import { Effect } from "effect"

const f = Effect.fnUntraced(function*(
  value: string
) {
  return yield* Effect.succeed(value.length)
})

//      ┌─── Effect.Effect<number>
//      ▼
const program = f("hello")
```

**Example** (Transforming the returned Effect)

```ts
import { Effect } from "effect"

const f = Effect.fnUntraced(
  function*(value: string) {
    return yield* Effect.succeed(value.length)
  },
  (effect, value) =>
    effect.pipe(Effect.map((length) => `${value}: ${length}`))
)

//      ┌─── Effect.Effect<string>
//      ▼
const program = f("hello")
```

**Example** (Annotating an untraced non-parametric function)

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

**Example** (Annotating an untraced parametric function)

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
declare const fnUntraced: fn.Untraced
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13516)

Since v3.12.0