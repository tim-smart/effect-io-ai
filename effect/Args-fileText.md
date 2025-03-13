Package: `@effect/cli`<br />
Module: `Args`<br />

## Args.fileText

Creates a file argument that reads it's contents.

Can optionally provide a custom argument name (defaults to `"file"`).

**Signature**

```ts
declare const fileText: (config?: Args.BaseArgsConfig | undefined) => Args<readonly [path: string, content: string]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Args.ts#L269)

Since v1.0.0