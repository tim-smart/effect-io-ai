Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isFunction

Checks whether a value is a `function`.

**When to use**

Use when you need a `Predicate` guard to narrow an `unknown` value to a
callable function.

**Details**

Uses `typeof input === "function"`.

**Example** (Guarding functions)

```ts
import { Predicate } from "effect"

const data: unknown = () => 1

if (Predicate.isFunction(data)) {
  console.log(data())
}
```

**See**

- `isObjectKeyword`

**Signature**

```ts
declare const isFunction: (input: unknown) => input is Function
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L736)

Since v2.0.0