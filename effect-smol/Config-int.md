Package: `effect`<br />
Module: `Config`<br />

## Config.int

Creates a config for an integer value. Rejects floats.

Shortcut for `Config.schema(Schema.Int, name)`.

**See**

- `number` – allows any number
- `port` – integers in 1–65535

**Signature**

```ts
declare const int: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L962)

Since v4.0.0