Package: `effect`<br />
Module: `Filter`<br />

## Filter.compose

Composes two filters sequentially, feeding the output of the first into the second.

**Example**

```ts
import { Filter, Result } from "effect"

const stringFilter = Filter.string
const nonEmptyUpper = Filter.make((s: string) =>
  s.length > 0 ? Result.succeed(s.toUpperCase()) : Result.fail(s)
)

const stringToUpper = Filter.compose(stringFilter, nonEmptyUpper)
```

**Signature**

```ts
declare const compose: { <PassL, PassR, FailR>(right: Filter<PassL, PassR, FailR>): <InputL, FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL, PassR, FailL | FailR>; <InputL, PassL, FailL, PassR, FailR>(left: Filter<InputL, PassL, FailL>, right: Filter<PassL, PassR, FailR>): Filter<InputL, PassR, FailL | FailR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L551)

Since v4.0.0