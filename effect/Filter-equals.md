Package: `effect`<br />
Module: `Filter`<br />

## Filter.equals

Creates a filter that only passes values equal to the specified value using structural equality.

**When to use**

Use to accept inputs that are structurally equal to a known expected value
while staying in a composable `Filter` / `Result` pipeline.

**Details**

Delegates to `Equal.equals`. On success it returns `Result.succeed(value)`;
on failure it returns `Result.fail(input)`.

**See**

- `equalsStrict` for JavaScript `===` matching instead of structural
equality
- `Equal.equals` for the underlying structural equality semantics

**Signature**

```ts
declare const equals: <const A, Input = unknown>(value: A) => Filter<Input, A, EqualsWith<Input, A, A, Exclude<Input, A>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Filter.ts#L543)

Since v4.0.0