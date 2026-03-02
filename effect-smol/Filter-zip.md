Package: `effect`<br />
Module: `Filter`<br />

## Filter.zip

Combines two filters into a tuple of their results.

Both filters must succeed for the combination to succeed. If both pass,
their outputs are combined into a tuple.

**Example**

```ts
import { Filter } from "effect"

const positiveNumbers = Filter.fromPredicate((n: number) => n > 0)
const evenNumbers = Filter.fromPredicate((n: number) => n % 2 === 0)

const positiveAndEven = Filter.zip(positiveNumbers, evenNumbers)
```

**Signature**

```ts
declare const zip: { <InputR, PassR, FailR>(right: Filter<InputR, PassR, FailR>): <InputL, PassL, FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL & InputR, [PassL, PassR], FailL | FailR>; <InputL, PassL, FailL, InputR, PassR, FailR>(left: Filter<InputL, PassL, FailL>, right: Filter<InputR, PassR, FailR>): Filter<InputL & InputR, [PassL, PassR], FailL | FailR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L454)

Since v4.0.0