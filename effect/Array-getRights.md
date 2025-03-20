Package: `effect`<br />
Module: `Array`<br />

## Array.getRights

Retrieves the `Right` values from an `Iterable` of `Either`s, collecting them into an array.

**Example**

```ts
import { Array, Either } from "effect"

const result = Array.getRights([Either.right(1), Either.left("err"), Either.right(2)])
console.log(result) // [1, 2]
```

**Signature**

```ts
declare const getRights: <T extends Iterable<Either.Either<any, any>>>(self: T) => Array<Either.Either.Right<ReadonlyArray.Infer<T>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2606)

Since v2.0.0