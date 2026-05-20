Package: `effect`<br />
Module: `Config`<br />

## Config.number

Creates a config for a numeric value (including `NaN`, `Infinity`).

**Details**

Shortcut for `Config.schema(Schema.Number, name)`.

**See**

- `finite` – rejects `NaN` and `Infinity`
- `int` – only integers

**Signature**

```ts
declare const number: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L975)

Since v2.0.0