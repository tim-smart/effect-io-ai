Package: `effect`<br />
Module: `Match`<br />

## Match.defined

Matches any defined (non-null and non-undefined) value.

This predicate matches values that are neither `null` nor `undefined`,
effectively filtering out nullish values while preserving all other types.

**Example**

```ts
import { Match } from "effect"

const processValue = Match.type<string | number | null | undefined>()
  .pipe(
    Match.when(Match.defined, (value) => `Defined value: ${value}`),
    Match.orElse(() => "Value is null or undefined")
  )

console.log(processValue("hello"))
// Output: "Defined value: hello"

console.log(processValue(42))
// Output: "Defined value: 42"

console.log(processValue(0))
// Output: "Defined value: 0"

console.log(processValue(""))
// Output: "Defined value: "

console.log(processValue(null))
// Output: "Value is null or undefined"

console.log(processValue(undefined))
// Output: "Value is null or undefined"
```

**Signature**

```ts
declare const defined: <A>(u: A) => u is A & {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1337)

Since v4.0.0