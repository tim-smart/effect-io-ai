Package: `effect`<br />
Module: `Filter`<br />

## Filter.number

A predefined filter that only passes through number values.

**Example**

```ts
import { Filter, Result } from "effect"

console.log(Filter.number(42)) // Result.succeed(42)
console.log(Filter.number("42")) // fail
```

**Signature**

```ts
declare const number: Filter<unknown, number, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L277)

Since v4.0.0