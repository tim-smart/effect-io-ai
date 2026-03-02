Package: `effect`<br />
Module: `Number`<br />

## Number.parse

Tries to parse a `number` from a `string` using the `Number()` function.
The following special string values are supported: "NaN", "Infinity", "-Infinity".

**Example**

```ts
import { Number } from "effect"

Number.parse("42") // 42
Number.parse("3.14") // 3.14
Number.parse("NaN") // NaN
Number.parse("Infinity") // Infinity
Number.parse("-Infinity") // -Infinity
Number.parse("not a number") // undefined
```

**Signature**

```ts
declare const parse: (s: string) => number | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L520)

Since v2.0.0