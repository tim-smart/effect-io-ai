Package: `effect`<br />
Module: `Array`<br />

## Array.liftOption

Lifts an `Option`-returning function into one that returns an array:
`Some(a)` becomes `[a]`, `None` becomes `[]`.

**Example** (Lifting an Option function)

```ts
import { Array, Option } from "effect"

const parseNumber = Array.liftOption((s: string) => {
  const n = Number(s)
  return isNaN(n) ? Option.none() : Option.some(n)
})
console.log(parseNumber("123")) // [123]
console.log(parseNumber("abc")) // []
```

**See**

- `liftPredicate` — lift a boolean predicate
- `liftResult` — lift a Result-returning function

**Signature**

```ts
declare const liftOption: <A extends Array<unknown>, B>(f: (...a: A) => Option.Option<B>) => (...a: A) => Array<B>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3495)

Since v2.0.0