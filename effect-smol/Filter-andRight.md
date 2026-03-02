Package: `effect`<br />
Module: `Filter`<br />

## Filter.andRight

Combines two filters but only returns the result of the right filter.

**Example**

```ts
import { Filter, Result } from "effect"

const positiveNumbers = Filter.fromPredicate((n: number) => n > 0)
const doubleNumbers = Filter.make((n: number) =>
  n > 0 ? Result.succeed(n * 2) : Result.fail(n)
)

const positiveDoubled = Filter.andRight(positiveNumbers, doubleNumbers)
```

**Signature**

```ts
declare const andRight: { <InputR, PassR, FailR>(right: Filter<InputR, PassR, FailR>): <InputL, PassL, FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL & InputR, PassR, FailL | FailR>; <InputL, PassL, FailL, InputR, PassR, FailR>(left: Filter<InputL, PassL, FailL>, right: Filter<InputR, PassR, FailR>): Filter<InputL & InputR, PassR, FailL | FailR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L519)

Since v4.0.0