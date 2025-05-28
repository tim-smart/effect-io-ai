Package: `effect`<br />
Module: `Array`<br />

## Array.getLefts

Retrieves the `Left` values from an `Iterable` of `Either`s, collecting them into an array.

**Example**

```ts
import { Array, Either } from "effect"

const result = Array.getLefts([Either.right(1), Either.left("err"), Either.right(2)])
console.log(result) // ["err"]
```

**Signature**

```ts
declare const getLefts: <T extends Iterable<Either.Either<any, any>>>(self: T) => Array<Either.Either.Left<ReadonlyArray.Infer<T>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2653)

Since v2.0.0