Package: `effect`<br />
Module: `Config`<br />

## Config.finite

Creates a config for a finite number (rejects `NaN` and `Infinity`).

**When to use**

Use to read a numeric config value that must be finite.

**Details**

Shortcut for `Config.schema(Schema.Finite, name)`.

**See**

- `number` for accepting `NaN` and `Infinity`
- `int` for accepting only integers

**Signature**

```ts
declare const finite: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L968)

Since v4.0.0