Package: `effect`<br />
Module: `Config`<br />

## Config.number

Creates a config for a numeric value (including `NaN`, `Infinity`).

**When to use**

Use to read a numeric config value when `NaN` and `Infinity` are acceptable.

**Details**

Shortcut for `Config.schema(Schema.Number, name)`.

**See**

- `finite` for rejecting `NaN` and `Infinity`
- `int` for accepting only integers

**Signature**

```ts
declare const number: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L996)

Since v2.0.0