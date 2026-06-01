Package: `effect`<br />
Module: `Number`<br />

## Number.parse

Parses a `number` from a `string` safely using the `Number()` function.
The following special string values are supported: "NaN", "Infinity", "-Infinity".

**When to use**

Use to parse numeric text without throwing on invalid input.

**Example** (Parsing numbers from strings)

```ts
import { Number } from "effect"

Number.parse("42") // Option.some(42)
Number.parse("3.14") // Option.some(3.14)
Number.parse("NaN") // Option.some(NaN)
Number.parse("Infinity") // Option.some(Infinity)
Number.parse("-Infinity") // Option.some(-Infinity)
Number.parse("not a number") // Option.none()
```

**See**

- `Number` for native constructor coercion

**Signature**

```ts
declare const parse: (s: string) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L771)

Since v2.0.0