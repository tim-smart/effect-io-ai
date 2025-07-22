Package: `effect`<br />
Module: `Array`<br />

## Array.liftEither

Lifts a function that returns an `Either` into a function that returns an array.
If the `Either` is a left, it returns an empty array.
If the `Either` is a right, it returns an array with the right value.

**Example**

```ts
import { Array, Either } from "effect"

const parseNumber = (s: string): Either.Either<number, Error> =>
  isNaN(Number(s)) ? Either.left(new Error("Not a number")) : Either.right(Number(s))

const liftedParseNumber = Array.liftEither(parseNumber)

const result1 = liftedParseNumber("42")
console.log(result1) // [42]

const result2 = liftedParseNumber("not a number")
console.log(result2) // []

// Explanation:
// The function parseNumber is lifted to return an array.
// When parsing "42", it returns an Either.left with the number 42, resulting in [42].
// When parsing "not a number", it returns an Either.right with an error, resulting in an empty array [].
```

**Signature**

```ts
declare const liftEither: <A extends Array<unknown>, E, B>(f: (...a: A) => Either.Either<B, E>) => (...a: A) => Array<B>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2972)

Since v2.0.0