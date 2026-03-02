Package: `effect`<br />
Module: `String`<br />

## String.TrimStart

Type-level representation of trimming whitespace from the start of a string.

**Example**

```ts
import type { String } from "effect"

type Result = String.TrimStart<"  hello"> // "hello"
```

**Signature**

```ts
type TrimStart<A> = A extends `${" " | "\n" | "\t" | "\r"}${infer B}` ? TrimStart<B> : A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L273)

Since v2.0.0