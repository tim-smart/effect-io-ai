Package: `effect`<br />
Module: `Flag`<br />

## Flag.choice

Creates a flag that accepts one of the provided string choices and returns
the selected string.

**When to use**

Use when a named option must be restricted to a fixed set of string values
and no custom value mapping is needed.

**Gotchas**

An empty choices array compiles, but no input value can parse successfully.

**See**

- `choiceWithValue` for mapping accepted strings to different typed values

**Signature**

```ts
declare const choice: <const Choices extends ReadonlyArray<string>>(name: string, choices: Choices) => Flag<Choices[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L181)

Since v4.0.0