Package: `effect`<br />
Module: `Either`<br />

## Either.all

Takes a structure of `Either`s and returns an `Either` of values with the same structure.

- If a tuple is supplied, then the returned `Either` will contain a tuple with the same length.
- If a struct is supplied, then the returned `Either` will contain a struct with the same keys.
- If an iterable is supplied, then the returned `Either` will contain an array.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.all([Either.right(1), Either.right(2)]), Either.right([1, 2]))
assert.deepStrictEqual(Either.all({ right: Either.right(1), b: Either.right("hello") }), Either.right({ right: 1, b: "hello" }))
assert.deepStrictEqual(Either.all({ right: Either.right(1), b: Either.left("error") }), Either.left("error"))
```

**Signature**

```ts
declare const all: <const I extends Iterable<Either<any, any>> | Record<string, Either<any, any>>>(input: I) => [I] extends [ReadonlyArray<Either<any, any>>] ? Either<{ -readonly [K in keyof I]: [I[K]] extends [Either<infer R, any>] ? R : never; }, I[number] extends never ? never : [I[number]] extends [Either<any, infer L>] ? L : never> : [I] extends [Iterable<Either<infer R, infer L>>] ? Either<Array<R>, L> : Either<{ -readonly [K in keyof I]: [I[K]] extends [Either<infer R, any>] ? R : never; }, I[keyof I] extends never ? never : [I[keyof I]] extends [Either<any, infer L>] ? L : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L738)

Since v2.0.0