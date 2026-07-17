Package: `effect`<br />
Module: `String`<br />

## String.Equivalence

Provides an `Equivalence` instance for strings using strict equality (`===`).

**Example** (Comparing strings for equality)

```ts
import { String } from "effect"

console.log(String.Equivalence("hello", "hello")) // true
console.log(String.Equivalence("hello", "world")) // false
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L96)

Since v2.0.0