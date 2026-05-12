Package: `effect`<br />
Module: `Result`<br />

## Result.all

Collects a structure of `Result`s into a single `Result` of collected values.

Accepts:
- A tuple/array: returns `Result` with a tuple/array of success values
- A struct (record): returns `Result` with a struct of success values
- An iterable: returns `Result` with an array of success values

Short-circuits on the first `Failure` encountered; later elements are not inspected.

**Example** (Collecting a tuple and a struct)

```ts
import { Result } from "effect"

// Tuple
const tuple = Result.all([Result.succeed(1), Result.succeed("two")])
console.log(tuple)
// Output: { _tag: "Success", success: [1, "two"], ... }

// Struct
const struct = Result.all({ x: Result.succeed(1), y: Result.fail("err") })
console.log(struct)
// Output: { _tag: "Failure", failure: "err", ... }
```

**See**

- `flatMap` for chaining two Results sequentially
- `gen` for generator-based composition of multiple Results

**Signature**

```ts
declare const all: <const I extends Iterable<Result<any, any>> | Record<string, Result<any, any>>>(input: I) => [I] extends [ReadonlyArray<Result<any, any>>] ? Result<{ -readonly [K in keyof I]: [I[K]] extends [Result<infer R, any>] ? R : never; }, I[number] extends never ? never : [I[number]] extends [Result<any, infer L>] ? L : never> : [I] extends [Iterable<Result<infer R, infer L>>] ? Result<Array<R>, L> : Result<{ -readonly [K in keyof I]: [I[K]] extends [Result<infer R, any>] ? R : never; }, I[keyof I] extends never ? never : [I[keyof I]] extends [Result<any, infer L>] ? L : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1329)

Since v4.0.0