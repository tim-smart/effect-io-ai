Package: `effect`<br />
Module: `String`<br />

## String.empty

Provides the empty string `""`.

**When to use**

Use when you need the canonical empty string value from the `String` module.

**Example** (Referencing the empty string)

```ts
import { String } from "effect"

console.log(String.empty) // ""
console.log(String.isEmpty(String.empty)) // true
```

**Signature**

```ts
declare const empty: ""
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L117)

Since v2.0.0