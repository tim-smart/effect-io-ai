Package: `@effect/cli`<br />
Module: `Options`<br />

## Options.fileSchema

Creates a parameter expecting path to a file, parse its contents and validate
it with a Schema.

**Signature**

```ts
declare const fileSchema: <I, A>(name: string, schema: Schema<A, I, FileSystem | Path | Terminal>, format?: "json" | "yaml" | "ini" | "toml" | undefined) => Options<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Options.ts#L261)

Since v1.0.0