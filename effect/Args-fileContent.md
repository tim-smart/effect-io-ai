## fileContent

Creates a file argument that reads its contents.

Can optionally provide a custom argument name (defaults to `"file"`).

**Signature**

```ts
declare const fileContent: (config?: Args.BaseArgsConfig | undefined) => Args<readonly [path: string, content: Uint8Array]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Args.ts#L234)

Since v1.0.0