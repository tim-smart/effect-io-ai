Package: `effect`<br />
Module: `Filter`<br />

## Filter.equalsStrict

Creates a `Filter` that passes only values strictly equal to the specified
value using JavaScript `===` comparison.

**When to use**

Use when you need a `Filter` that accepts only the exact primitive value or
object reference using JavaScript strict equality in a `Filter` / `Result`
pipeline.

**Gotchas**

`NaN` never passes, even when the expected value is `NaN`, and objects pass
only when they are the same reference.

**See**

- `equals` for structural equality when distinct values with equal
contents should pass

**Signature**

```ts
declare const equalsStrict: <const A, Input = unknown>(value: A) => Filter<Input, A, EqualsWith<Input, A, A, Exclude<Input, A>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L320)

Since v4.0.0