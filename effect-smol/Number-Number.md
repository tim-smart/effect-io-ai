Package: `effect`<br />
Module: `Number`<br />

## Number.Number

Exposes the global number constructor.

**When to use**

Use to access native JavaScript numeric coercion from the Effect module
namespace.

**Gotchas**

This follows native `Number` coercion rules, including empty strings
becoming `0` and invalid numeric strings becoming `NaN`.

**See**

- `parse` for parsing strings into an `Option`

**Example** (Coercing values to numbers)

```ts
import { Number as N } from "effect"

const num = N.Number("42")
console.log(num) // 42

const float = N.Number("3.14")
console.log(float) // 3.14
```

**Signature**

```ts
declare const Number: NumberConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L48)

Since v4.0.0