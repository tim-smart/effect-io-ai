Package: `effect`<br />
Module: `Config`<br />

## Config.nonEmptyString

Creates a config for a non-empty string value. Fails if the value is an
empty string.

**When to use**

Use to read a string config value that must contain at least one character.

**Details**

Shortcut for `Config.schema(Schema.NonEmptyString, name)`.

**See**

- `string` for allowing empty strings

**Signature**

```ts
declare const nonEmptyString: (name?: string) => Config<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L974)

Since v3.7.0