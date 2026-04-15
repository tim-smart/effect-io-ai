Package: `effect`<br />
Module: `Completions`<br />

## Completions.ArgumentType

Describes the supported argument value shapes.

**Signature**

```ts
type ArgumentType = | { readonly _tag: "String" }
  | { readonly _tag: "Integer" }
  | { readonly _tag: "Float" }
  | { readonly _tag: "Date" }
  | { readonly _tag: "Choice"; readonly values: ReadonlyArray<string> }
  | { readonly _tag: "Path"; readonly pathType: "file" | "directory" | "either" }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Completions.ts#L80)

Since v4.0.0