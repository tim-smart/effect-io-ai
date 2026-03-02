Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isRegExp

Checks whether a value is a `RegExp`.

When to use:
- You need a runtime guard for regular expressions.

Behavior:
- Pure; does not mutate input.
- Uses `instanceof RegExp`.

**Example** (Guard RegExp)

```ts
import { Predicate } from "effect"

const data: unknown = /abc/

console.log(Predicate.isRegExp(data))
```

See also: `isDate`

**Signature**

```ts
declare const isRegExp: (input: unknown) => input is RegExp
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1355)

Since v3.9.0