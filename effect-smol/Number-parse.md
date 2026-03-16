Package: `effect`<br />
Module: `Number`<br />

## Number.parse

Tries to parse a `number` from a `string` using the `Number()` function.
The following special string values are supported: "NaN", "Infinity", "-Infinity".

**Example**

```ts
import { Number } from "effect"

Number.parse("42") // Option.some(42)
Number.parse("3.14") // Option.some(3.14)
Number.parse("NaN") // Option.some(NaN)
Number.parse("Infinity") // Option.some(Infinity)
Number.parse("-Infinity") // Option.some(-Infinity)
Number.parse("not a number") // Option.none()
```

**Signature**

```ts
declare const parse: (s: string) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L547)

Since v2.0.0