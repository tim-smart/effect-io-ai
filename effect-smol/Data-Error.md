Package: `effect`<br />
Module: `Data`<br />

## Data.Error

Base class for yieldable errors.

Extends `Cause.YieldableError`, so instances can be yielded inside
`Effect.gen` to fail the enclosing effect. Fields are passed as a single
object; when there are no fields the argument is optional.

- Use for errors that do **not** need tag-based discrimination.
- If you need `Effect.catchTag` support, use `TaggedError` instead.
- If a `message` field is provided, it becomes the error's `.message`.

**Example** (defining a yieldable error)

```ts
import { Data, Effect } from "effect"

class NetworkError extends Data.Error<{
  readonly code: number
  readonly message: string
}> {}

const program = Effect.gen(function*() {
  return yield* new NetworkError({ code: 500, message: "timeout" })
})

// The effect fails with a NetworkError
Effect.runSync(Effect.exit(program))
```

**See**

- `TaggedError` — adds a `_tag` for `Effect.catchTag`
- `Class` — non-error data class

**Signature**

```ts
declare const Error: new <A extends Record<string, any> = {}>(args: Types.VoidIfEmpty<{ readonly [P in keyof A]: A[P]; }>) => Cause.YieldableError & Readonly<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L719)

Since v2.0.0