## fileContent

Creates a parameter expecting path to a file and reads its contents.

**Signature**

```ts
declare const fileContent: (name: string) => Options<readonly [path: string, content: Uint8Array]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Options.ts#L242)

Since v1.0.0