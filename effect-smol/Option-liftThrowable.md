Package: `effect`<br />
Module: `Option`<br />

## Option.liftThrowable

Lifts a function that may throw into one that returns an `Option`.

**When to use**

- Wrapping exception-throwing APIs (e.g. `JSON.parse`) for safe usage

**Behavior**

- If the function returns normally → `Some` with the result
- If the function throws → `None` (exception is swallowed)

**Example** (Lifting JSON.parse)

```ts
import { Option } from "effect"

const parse = Option.liftThrowable(JSON.parse)

console.log(parse("1"))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(parse(""))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `liftNullishOr` for nullable-returning functions

**Signature**

```ts
declare const liftThrowable: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (...a: A) => Option<B>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1081)

Since v2.0.0