Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.Boolean

Reference to the global Boolean constructor.

**Example**

```ts
import * as Boolean from "effect/Boolean"

const bool = Boolean.Boolean(1)
console.log(bool) // true

const fromString = Boolean.Boolean("false")
console.log(fromString) // true (non-empty string)

const fromZero = Boolean.Boolean(0)
console.log(fromZero) // false
```

**Signature**

```ts
declare const Boolean: BooleanConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L34)

Since v4.0.0