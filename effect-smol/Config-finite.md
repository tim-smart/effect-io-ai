Package: `effect`<br />
Module: `Config`<br />

## Config.finite

Creates a config for a finite number (rejects `NaN` and `Infinity`).

Shortcut for `Config.schema(Schema.Finite, name)`.

**See**

- `number` – allows `NaN` and `Infinity`
- `int` – only integers

**Signature**

```ts
declare const finite: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L924)

Since v4.0.0