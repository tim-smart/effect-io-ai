Package: `effect`<br />
Module: `String`<br />

## String.Equivalence

An `Equivalence` instance for strings using strict equality (`===`).

**Example**

```ts
import { String } from "effect"

console.log(String.Equivalence("hello", "hello")) // true
console.log(String.Equivalence("hello", "world")) // false
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L75)

Since v4.0.0