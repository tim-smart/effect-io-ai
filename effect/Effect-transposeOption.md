Package: `effect`<br />
Module: `Effect`<br />

## Effect.transposeOption

Converts an `Option` of an `Effect` into an `Effect` of an `Option`.

**Details**

This function transforms an `Option<Effect<A, E, R>>` into an
`Effect<Option<A>, E, R>`. If the `Option` is `None`, the resulting `Effect`
will immediately succeed with a `None` value. If the `Option` is `Some`, the
inner `Effect` will be executed, and its result wrapped in a `Some`.

**Example**

```ts
import { Effect, Option } from "effect"

//      ┌─── Option<Effect<number, never, never>>
//      ▼
const maybe = Option.some(Effect.succeed(42))

//      ┌─── Effect<Option<number>, never, never>
//      ▼
const result = Effect.transposeOption(maybe)

console.log(Effect.runSync(result))
// Output: { _id: 'Option', _tag: 'Some', value: 42 }
```

**Signature**

```ts
declare const transposeOption: <A = never, E = never, R = never>(self: Option.Option<Effect<A, E, R>>) => Effect<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13307)

Since v3.13.0