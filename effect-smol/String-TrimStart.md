Package: `effect`<br />
Module: `String`<br />

## String.TrimStart

Type-level representation of trimming whitespace from the start of a string.

**Example** (Trimming leading whitespace at the type level)

```ts
import type { String } from "effect"

type Result = String.TrimStart<"  hello"> // "hello"
```

**Signature**

```ts
type TrimStart<A> = A extends `${" " | "\n" | "\t" | "\r"}${infer B}` ? TrimStart<B> : A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L291)

Since v2.0.0