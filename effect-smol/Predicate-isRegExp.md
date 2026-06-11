Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isRegExp

Checks whether a value is a `RegExp`.

**When to use**

Use when you need a `Predicate` runtime guard for regular expressions.

**Details**

Uses `instanceof RegExp`.

**Example** (Guard RegExp)

```ts
import { Predicate } from "effect"

const data: unknown = /abc/

console.log(Predicate.isRegExp(data))
```

**See**

- `isDate`

**Signature**

```ts
declare const isRegExp: (input: unknown) => input is RegExp
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1376)

Since v3.9.0