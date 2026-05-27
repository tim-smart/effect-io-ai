Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.String

An `Equivalence` instance for strings using strict equality (`===`).

**When to use**

Use when an API needs an `Equivalence` instance for string equality.

**Example** (Comparing strings)

```ts
import { Equivalence } from "effect"

console.log(Equivalence.String("hello", "hello")) // true
console.log(Equivalence.String("hello", "world")) // false
```

**Signature**

```ts
declare const String: Equivalence<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L271)

Since v4.0.0