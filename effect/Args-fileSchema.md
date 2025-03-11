## fileSchema

Creates a file argument that reads, parses and validates its contents.

Can optionally provide a custom argument name (defaults to `"file"`).

**Signature**

```ts
declare const fileSchema: <I, A>(schema: Schema<A, I, FileSystem | Path | Terminal>, config?: Args.FormatArgsConfig | undefined) => Args<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Args.ts#L256)

Since v1.0.0