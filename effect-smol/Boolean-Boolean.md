Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.Boolean

Exposes the global boolean constructor for JavaScript truthiness
coercion.

**When to use**

Use to access native JavaScript truthiness coercion from the Effect module
namespace.

**Gotchas**

This follows native truthiness rules. For example, non-empty strings such as
`"false"` coerce to `true`.

**Example** (Coercing values to booleans)

```ts
import { Boolean } from "effect"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L50)

Since v4.0.0