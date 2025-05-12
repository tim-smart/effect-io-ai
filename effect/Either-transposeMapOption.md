Package: `effect`<br />
Module: `Either`<br />

## Either.transposeMapOption

Applies an `Either` on an `Option` and transposes the result.

**Details**

If the `Option` is `None`, the resulting `Either` will immediately succeed with a `Right` value of `None`.
If the `Option` is `Some`, the transformation function will be applied to the inner value, and its result wrapped in a `Some`.

**Example**

```ts
import { Either, Option, pipe } from "effect"

//          ┌─── Either<Option<number>, never>>
//          ▼
const noneResult = pipe(
  Option.none(),
  Either.transposeMapOption(() => Either.right(42)) // will not be executed
)
console.log(noneResult)
// Output: { _id: 'Either', _tag: 'Right', right: { _id: 'Option', _tag: 'None' } }

//          ┌─── Either<Option<number>, never>>
//          ▼
const someRightResult = pipe(
  Option.some(42),
  Either.transposeMapOption((value) => Either.right(value * 2))
)
console.log(someRightResult)
// Output: { _id: 'Either', _tag: 'Right', right: { _id: 'Option', _tag: 'Some', value: 84 } }
```

**Signature**

```ts
declare const transposeMapOption: (<A, B, E = never>(f: (self: A) => Either<B, E>) => (self: Option<A>) => Either<Option<B>, E>) & (<A, B, E = never>(self: Option<A>, f: (self: A) => Either<B, E>) => Either<Option<B>, E>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L1032)

Since v3.15.0