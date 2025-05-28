Package: `effect`<br />
Module: `Effect`<br />

## Effect.transposeMapOption

Applies an `Effect` on an `Option` and transposes the result.

**Details**

If the `Option` is `None`, the resulting `Effect` will immediately succeed with a `None` value.
If the `Option` is `Some`, the effectful operation will be executed on the inner value, and its result wrapped in a `Some`.

**Example**

```ts
import { Effect, Option, pipe } from "effect"

//          ┌─── Effect<Option<number>, never, never>>
//          ▼
const noneResult = pipe(
  Option.none(),
  Effect.transposeMapOption(() => Effect.succeed(42)) // will not be executed
)
console.log(Effect.runSync(noneResult))
// Output: { _id: 'Option', _tag: 'None' }

//          ┌─── Effect<Option<number>, never, never>>
//          ▼
const someSuccessResult = pipe(
  Option.some(42),
  Effect.transposeMapOption((value) => Effect.succeed(value * 2))
)
console.log(Effect.runSync(someSuccessResult))
// Output: { _id: 'Option', _tag: 'Some', value: 84 }
```

**Signature**

```ts
declare const transposeMapOption: (<A, B, E = never, R = never>(f: (self: A) => Effect<B, E, R>) => (self: Option.Option<A>) => Effect<Option.Option<B>, E, R>) & (<A, B, E = never, R = never>(self: Option.Option<A>, f: (self: A) => Effect<B, E, R>) => Effect<Option.Option<B>, E, R>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13344)

Since v3.14.0