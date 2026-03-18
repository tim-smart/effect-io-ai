Package: `effect`<br />
Module: `Config`<br />

## Config.number

Creates a config for a numeric value (including `NaN`, `Infinity`).

Shortcut for `Config.schema(Schema.Number, name)`.

**See**

- `finite` – rejects `NaN` and `Infinity`
- `int` – only integers

**Signature**

```ts
declare const number: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L937)

Since v4.0.0