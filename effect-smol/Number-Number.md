Package: `effect`<br />
Module: `Number`<br />

## Number.Number

The global `Number` constructor.

**Example**

```ts
import * as N from "effect/Number"

const num = N.Number("42")
console.log(num) // 42

const float = N.Number("3.14")
console.log(float) // 3.14
```

**Signature**

```ts
declare const Number: NumberConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L31)

Since v4.0.0