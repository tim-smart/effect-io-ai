Package: `effect`<br />
Module: `String`<br />

## String.Trim

Type-level representation of trimming whitespace from both ends of a string.

**Example**

```ts
import type { String } from "effect"

type Result = String.Trim<"  hello  "> // "hello"
```

**Signature**

```ts
type Trim<A> = TrimEnd<TrimStart<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L241)

Since v2.0.0