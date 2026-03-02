Package: `effect`<br />
Module: `Filter`<br />

## Filter.make

Creates a Filter from a function that returns either a `pass` or `fail` value.

This is the primary constructor for creating custom filters. The function
should return either `Result.succeed(value)` or `Result.fail(value)`.

**Example**

```ts
import { Filter, Result } from "effect"

// Create a filter for positive numbers
const positiveFilter = Filter.make((n: number) => n > 0 ? Result.succeed(n) : Result.fail(n))

// Create a filter that transforms strings to uppercase
const uppercaseFilter = Filter.make((s: string) =>
  s.length > 0 ? Result.succeed(s.toUpperCase()) : Result.fail(s)
)
```

**Signature**

```ts
declare const make: <Input, Pass, Fail>(f: (input: Input) => Result.Result<Pass, Fail>) => Filter<Input, Pass, Fail>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L102)

Since v4.0.0