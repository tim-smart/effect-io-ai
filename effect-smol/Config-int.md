Package: `effect`<br />
Module: `Config`<br />

## Config.int

Creates a config for an integer value. Rejects floats.

**When to use**

Use to read a numeric config value that must be an integer.

**Details**

Shortcut for `Config.schema(Schema.Int, name)`.

**See**

- `number` for accepting any number
- `port` for accepting only integers in `1` through `65535`

**Signature**

```ts
declare const int: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L989)

Since v4.0.0