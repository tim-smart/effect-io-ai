Package: `effect`<br />
Module: `Filter`<br />

## Filter.andLeft

Combines two filters but only returns the result of the left filter.

**Example**

```ts
import { Filter } from "effect"

const positiveNumbers = Filter.fromPredicate((n: number) => n > 0)
const evenNumbers = Filter.fromPredicate((n: number) => n % 2 === 0)

const positiveEven = Filter.andLeft(positiveNumbers, evenNumbers)
```

**Signature**

```ts
declare const andLeft: { <InputR, PassR, FailR>(right: Filter<InputR, PassR, FailR>): <InputL, PassL, FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL & InputR, PassL, FailL | FailR>; <InputL, PassL, FailL, InputR, PassR, FailR>(left: Filter<InputL, PassL, FailL>, right: Filter<InputR, PassR, FailR>): Filter<InputL & InputR, PassL, FailL | FailR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L486)

Since v4.0.0