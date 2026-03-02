Package: `effect`<br />
Module: `Array`<br />

## Array.liftNullishOr

Lifts a nullable-returning function into one that returns an array:
`null`/`undefined` becomes `[]`, anything else becomes `[value]`.

**Example** (Lifting a nullable function)

```ts
import { Array } from "effect"

const parseNumber = Array.liftNullishOr((s: string) => {
  const n = Number(s)
  return isNaN(n) ? null : n
})
console.log(parseNumber("123")) // [123]
console.log(parseNumber("abc")) // []
```

**See**

- `fromNullishOr` — convert a single nullable value
- `liftOption` — lift an Option-returning function

**Signature**

```ts
declare const liftNullishOr: <A extends Array<unknown>, B>(f: (...a: A) => B) => (...a: A) => Array<NonNullable<B>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3542)

Since v2.0.0