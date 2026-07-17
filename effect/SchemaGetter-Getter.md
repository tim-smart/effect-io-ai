Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Getter

Represents a composable transformation from an encoded type `E` to a decoded type `T`.

**When to use**

Use when you need a schema getter to build and compose custom transformations
for `Schema.decodeTo` or `Schema.decode`.

**Details**

A getter wraps a function `Option<E> -> Effect<Option<T>, Issue, R>`. It
receives `Option.None` when the encoded key is absent, such as a missing
struct field, and returns `Option.None` to omit the value from the decoded
output. It fails with `Issue` on invalid input and may require Effect
services via `R`. `.map(f)` applies `f` to the decoded value inside `Some`
while leaving `None` unchanged. `.compose(other)` chains two getters by
feeding the output of `this` into `other`; passthrough getters on either side
are optimized away.

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
      options: SchemaAST.ParseOptions
    ) => Effect.Effect<Option.Option<T>, SchemaIssue.Issue, R>
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L64)

Since v4.0.0