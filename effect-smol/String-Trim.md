Package: `effect`<br />
Module: `String`<br />

## String.Trim

Type-level representation of trimming whitespace from both ends of a string.

**Example** (Trimming whitespace at the type level)

```ts
import type { String } from "effect"

type Result = String.Trim<"  hello  "> // "hello"
```

**Signature**

```ts
type Trim<A> = TrimEnd<TrimStart<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L338)

Since v2.0.0