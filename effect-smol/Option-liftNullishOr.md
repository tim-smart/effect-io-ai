Package: `effect`<br />
Module: `Option`<br />

## Option.liftNullishOr

Lifts a function that may return `null` or `undefined` into one that returns
an `Option`.

**When to use**

- Wrapping existing nullable-returning functions for use in `Option` pipelines

**Behavior**

- Calls the original function with the given arguments
- Wraps the result via `fromNullishOr`

**Example** (Lifting a parser)

```ts
import { Option } from "effect"

const parse = (s: string): number | undefined => {
  const n = parseFloat(s)
  return isNaN(n) ? undefined : n
}

const parseOption = Option.liftNullishOr(parse)

console.log(parseOption("1"))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(parseOption("not a number"))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `fromNullishOr` for converting a single value
- `liftThrowable` for functions that throw instead

**Signature**

```ts
declare const liftNullishOr: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (...a: A) => Option<NonNullable<B>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L988)

Since v2.0.0