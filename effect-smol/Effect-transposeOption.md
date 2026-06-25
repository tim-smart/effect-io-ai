Package: `effect`<br />
Module: `Effect`<br />

## Effect.transposeOption

Converts an `Option` of an `Effect` into an `Effect` of an `Option`.

**When to use**

Use when an effect should run only when an optional value is present, while
preserving absence as a successful `None`.

**Details**

- `None` becomes an effect that succeeds with `None`
- `Some(effect)` runs the inner effect and wraps its success value in `Some`
- Inner failures are preserved in the resulting effect

**Example** (Transposing an Option of an Effect)

```ts
import { Effect, Option } from "effect"

const some = Option.some(Effect.succeed(42))

//      ┌─── Effect<Option<number>, never, never>
//      ▼
const program = Effect.transposeOption(some)

Effect.runPromise(program).then(console.log)
// Output: { _id: 'Option', _tag: 'Some', value: 42 }
```

**Signature**

```ts
declare const transposeOption: <A = never, E = never, R = never>(self: Option<Effect<A, E, R>>) => Effect<Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1857)

Since v3.13.0