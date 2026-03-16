Package: `effect`<br />
Module: `String`<br />

## String.TrimEnd

Type-level representation of trimming whitespace from the end of a string.

**Example**

```ts
import type { String } from "effect"

type Result = String.TrimEnd<"hello  "> // "hello"
```

**Signature**

```ts
type TrimEnd<A> = A extends `${infer B}${" " | "\n" | "\t" | "\r"}` ? TrimEnd<B> : A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L306)

Since v2.0.0