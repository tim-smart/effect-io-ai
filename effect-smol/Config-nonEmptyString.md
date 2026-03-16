Package: `effect`<br />
Module: `Config`<br />

## Config.nonEmptyString

Creates a config for a non-empty string value. Fails if the value is an
empty string.

Shortcut for `Config.schema(Schema.NonEmptyString, name)`.

**See**

- `string` – allows empty strings

**Signature**

```ts
declare const nonEmptyString: (name?: string) => Config<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L917)

Since v4.0.0