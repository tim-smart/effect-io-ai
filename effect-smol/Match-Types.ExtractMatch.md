Package: `effect`<br />
Module: `Match`<br />

## Match.Types.ExtractMatch

Extracts and narrows the matched type from an input type given a pattern.

This is the core type utility that performs the actual type extraction
and narrowing logic. It handles the complex type-level computation that
determines what type results from applying a pattern to an input type.

**Example**

```ts
import { Match } from "effect"

type StringExtract = Match.Types.ExtractMatch<
  string | number | boolean,
  typeof Match.string
>
// Result: string

type ObjectExtract = Match.Types.ExtractMatch<
  { type: "user"; name: string } | { type: "admin"; role: string },
  { type: "user" }
>
// Result: { type: "user"; name: string }

// This powers the type narrowing in:
Match.when(Match.string, (s) => s.toUpperCase())
//                      ^^^ s is correctly typed as string
```

**Signature**

```ts
type ExtractMatch<I, P> = [ExtractAndNarrow<I, P>] extends [infer EI] ? EI
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2345)

Since v4.0.0