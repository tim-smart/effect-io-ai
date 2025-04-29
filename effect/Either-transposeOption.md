Package: `effect`<br />
Module: `Either`<br />

## Either.transposeOption

Converts an `Option` of an `Either` into an `Either` of an `Option`.

**Details**

This function transforms an `Option<Either<A, E>>` into an
`Either<Option<A>, E>`. If the `Option` is `None`, the resulting `Either`
will be a `Right` with a `None` value. If the `Option` is `Some`, the
inner `Either` will be executed, and its result wrapped in a `Some`.

**Example**

```ts
import { Effect, Either, Option } from "effect"

//      ┌─── Option<Either<number, never>>
//      ▼
const maybe = Option.some(Either.right(42))

//      ┌─── Either<Option<number>, never, never>
//      ▼
const result = Either.transposeOption(maybe)

console.log(Effect.runSync(result))
// Output: { _id: 'Option', _tag: 'Some', value: 42 }
```

**Signature**

```ts
declare const transposeOption: <A = never, E = never>(self: Option<Either<A, E>>) => Either<Option<A>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L992)

Since v3.14.0