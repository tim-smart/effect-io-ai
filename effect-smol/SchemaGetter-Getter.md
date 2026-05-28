Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Getter

Represents a composable transformation from an encoded type `E` to a decoded type `T`.

**When to use**

Use to build custom schema transformations with `Schema.decodeTo` or `Schema.decode`.
- Composing multiple transformation steps into a single getter.

**Details**

- A getter wraps a function `Option<E> -> Effect<Option<T>, Issue, R>`.
- Receives `Option.None` when the encoded key is absent (e.g. missing struct field).
- Returns `Option.None` to omit the value from the decoded output.
- Fails with `Issue` on invalid input.
- May require Effect services via `R`.
- `.map(f)` applies `f` to the decoded value (inside the `Some`), leaving `None` unchanged.
- `.compose(other)` chains two getters: the output of `this` feeds into `other`.
  Passthrough getters on either side are optimized away.

**Example** (Creating and composing getters)

```ts
import { SchemaGetter } from "effect"

const parseNumber = SchemaGetter.transform<number, string>((s) => Number(s))
const double = SchemaGetter.transform<number, number>((n) => n * 2)
const composed = parseNumber.compose(double)
// composed: Getter<number, string> — parses then doubles
```

**See**

- `transform` to create a getter from a pure function
- `passthrough` for the identity getter
- `transformOrFail` for fallible transformation

**Signature**

```ts
declare class Getter<T, E, R> { constructor(
    run: (
      input: Option.Option<E>,
      options: AST.ParseOptions
    ) => Effect.Effect<Option.Option<T>, Issue.Issue, R>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L137)

Since v4.0.0