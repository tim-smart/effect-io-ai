Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedError

Creates a tagged error class with a `_tag` discriminator.

Like `Error`, but instances also carry a `readonly _tag` property,
enabling `Effect.catchTag` and `Effect.catchTags` for tag-based recovery.
The `_tag` is excluded from the constructor argument.

- Use for domain errors in Effect applications where you want
  discriminated-union error handling.
- Yielding an instance inside `Effect.gen` fails the effect with this error.

**Example** (tag-based error recovery)

```ts
import { Data, Effect } from "effect"

class NotFound extends Data.TaggedError("NotFound")<{
  readonly resource: string
}> {}

class Forbidden extends Data.TaggedError("Forbidden")<{
  readonly reason: string
}> {}

const program = Effect.gen(function*() {
  return yield* new NotFound({ resource: "/users/42" })
})

const recovered = program.pipe(
  Effect.catchTag("NotFound", (e) =>
    Effect.succeed(`missing: ${e.resource}`))
)
```

**See**

- `Error` — without a `_tag`
- `TaggedClass` — tagged class that is not an error

**Signature**

```ts
declare const TaggedError: <Tag extends string>(tag: Tag) => new <A extends Record<string, any> = {}>(args: Types.VoidIfEmpty<{ readonly [P in keyof A as P extends "_tag" ? never : P]: A[P]; }>) => Cause.YieldableError & { readonly _tag: Tag; } & Readonly<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L763)

Since v2.0.0