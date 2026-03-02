Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isString

Checks whether a value is a `string`.

When to use:
- You need to guard an `unknown` value as a string.
- You want to narrow in `if` statements.

Behavior:
- Pure; does not mutate input.
- Uses `typeof input === "string"`.

**Example** (Guard string)

```ts
import { Predicate } from "effect"

const data: unknown = "hi"

if (Predicate.isString(data)) {
  console.log(data.toUpperCase())
}
```

See also: `isNumber`, `isBoolean`, `Refinement`

**Signature**

```ts
declare const isString: (input: unknown) => input is string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L545)

Since v2.0.0