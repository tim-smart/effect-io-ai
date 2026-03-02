Package: `effect`<br />
Module: `Filter`<br />

## Filter.string

A predefined filter that only passes through string values.

**Example**

```ts
import { Filter, Result } from "effect"

console.log(Filter.string("hello")) // Result.succeed("hello")
console.log(Filter.string(42)) // fail
```

**Signature**

```ts
declare const string: Filter<unknown, string, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L234)

Since v4.0.0