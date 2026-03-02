Package: `effect`<br />
Module: `Filter`<br />

## Filter.Filter

Represents a filter function that can transform inputs to outputs or filter them out.

A filter takes an input value and either returns a boxed pass value or
the special `fail` type to indicate the value should be filtered out.

**Example**

```ts
import { Filter, Result } from "effect"

// A filter that only passes positive numbers
const positiveFilter: Filter.Filter<number> = (n) => n > 0 ? Result.succeed(n) : Result.fail(n)

console.log(positiveFilter(5)) // Result.succeed(5)
console.log(positiveFilter(-3)) // Result.fail(-3)
```

**Signature**

```ts
export interface Filter<in Input, out Pass = Input, out Fail = Input> {
  (input: Input): Result.Result<Pass, Fail>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L32)

Since v4.0.0