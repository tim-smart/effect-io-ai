Package: `effect`<br />
Module: `Effect`<br />

## Effect.fn

Creates a reusable traced function from an Effect body.

**When to use**

Use when you are defining a reusable Effect function whose implementation
would otherwise be a normal function returning `gen`, and you want
tracing spans or stack-frame capture.

**Details**

Compared to a plain function that returns `gen`, `Effect.fn` reuses the
generator body instead of allocating a fresh generator closure around the
arguments on every call. Call `Effect.fn(body, ...)` for a generic
stack-frame boundary without creating a span. Call
`Effect.fn("operationName", options?)(body, ...)` when that boundary should
have a readable operation name and the returned `Effect` should create a
tracing span when run. `SpanOptionsNoTrace` configures span metadata
such as attributes, links, parent or root selection, kind, sampling, and log
level. Additional arguments after the generator body act like `pipe`
transforms: each transform receives the previous result and the original
function arguments. When those transforms return an `Effect`, the returned
effect includes stack-frame metadata and, for the named form, a tracing span.
Generator bodies may declare a `this` parameter; pass `{ self }` before the
body to bind `this` when the function is created.

**Example** (Defining traced effect functions)

```ts
import { Effect } from "effect"

const f = Effect.fn("calculateLength")(function*(value: string) {
  return yield* Effect.succeed(value.length)
})

//      ┌─── Effect.Effect<number>
//      ▼
const program = f("hello")
```

**Example** (Transforming the returned Effect)

```ts
import { Effect } from "effect"

const f = Effect.fn("formatLength")(
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

**Example** (Binding this)

```ts
import { Effect } from "effect"

class Counter {
  count = 0

  increment = Effect.fn("Counter.increment")(
    { self: this },
    function*(this: Counter, by: number) {
      this.count += by
      return yield* Effect.succeed(this.count)
    }
  )
}

const counter = new Counter()

//      ┌─── Effect.Effect<number>
//      ▼
const program = counter.increment(1)
```

**Example** (Annotating a traced non-parametric function)

```ts
import { Effect } from "effect"

const f = Effect.fn("calculateLength")(function*(
  value: string
): Effect.fn.Return<number> {
  return yield* Effect.succeed(value.length)
})

//      ┌─── Effect.Effect<number>
//      ▼
const program = f("hello")
```

**Example** (Annotating a traced parametric function)

```ts
import { Effect } from "effect"

const f = Effect.fn("succeed")(function*<A>(
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
declare const fn: fn.Traced & ((name: string, options?: SpanOptionsNoTrace) => fn.Traced)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13682)

Since v3.11.0